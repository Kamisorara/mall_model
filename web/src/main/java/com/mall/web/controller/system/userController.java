package com.mall.web.controller.system;


import com.mall.dao.mapper.AddrMapper;
import com.mall.dao.mapper.HeadMapper;
import com.mall.dao.mapper.UserMapper;
import com.mall.entity.entity.Addr;
import com.mall.entity.entity.User;
import com.mall.entity.entity.UserDetail;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.utils.JwtUtil;
import com.mall.service.service.LoginService;
import com.mall.service.service.UpdateUserDetailService;
import com.mall.service.service.UserInfoService;
import com.mall.service.service.VerifyService;
import io.jsonwebtoken.Claims;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户登录接口
 */
@RestController
@RequestMapping("/user")
public class userController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private VerifyService verifyService;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private AddrMapper addrMapper;
    @Autowired
    private UpdateUserDetailService updateUserDetailService;
    @Autowired
    HeadMapper headMapper;

    /**
     * 登录接口
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResponseResult login(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User();
        user.setUserName(username);
        user.setPassword(password);
        //登录操作
        return loginService.login(user);
    }

    /**
     * 注册接口
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ResponseResult register(@RequestParam("username") String username,
                                   @RequestParam("password") String password,
                                   @RequestParam("password2") String passwordRepeat,
                                   @RequestParam("email") String email,
                                   @RequestParam("verify") String verify) {
        Map<String, Object> map = new HashMap<>();
        try {
            if (verifyService.doVerify(email, verify) && password.equals(passwordRepeat)) {
                Addr addr = new Addr();
                addr.setAddr("（这是默认地址，请更改！）");
                User user = new User();
                user.setUserName(username);
                //这里需要加密存储 ,后面封装到service里面
                BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
                String encode = encoder.encode(password);
                user.setPassword(encode);
                userMapper.insert(user);
                Long userIdInDataBase = userMapper.selectUserIdByUserName(username);
                addr.setUserId(userIdInDataBase);
                addrMapper.insert(addr);
                map.put("Info", email + "用户" + "注册成功！");
                return new ResponseResult(200, "注册成功!", map);
            } else {
                return new ResponseResult(400, "注册失败，请检查邮箱验证码或是密码是是否输入正确");
            }
        } catch (Exception e) {
            return new ResponseResult(400, "发生未知错误!");
        }
    }

    /**
     * 发送验证码
     *
     * @param email
     * @return
     */
    @RequestMapping(value = "/verify-code", method = RequestMethod.POST)
    public ResponseResult verifyCode(@RequestParam("email") String email) {
        Map<String, Object> map = new HashMap<>();
        try {
            verifyService.sendVerifyCode(email);
            return new ResponseResult(200, "邮件发送成功");
        } catch (Exception e) {
            return new ResponseResult(400, "邮件发送失败！");
        }
    }

    /**
     * 退出
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ResponseResult logout() {
        return loginService.logout();
    }

    /**
     * 获取用户个人信息（这个接口不建议使用，后期会考虑删除）
     */
    @RequestMapping(value = "/user-info-detail", method = RequestMethod.GET)
    public ResponseResult getUserInfoDetail(HttpServletRequest request) throws Exception {
        //获取token
        String token = request.getHeader("token");
        Claims claims = JwtUtil.parseJWT(token);
        String id = claims.get("sub").toString();
        long userId = Long.parseLong(id);
        User userInfo = userInfoService.getUserInfo(userId);
        return new ResponseResult(200, "用户信息获取成功", userInfo);
    }

    /**
     * 获取用户详细信息
     */
    @RequestMapping(value = "/user-info-detail-get", method = RequestMethod.POST)
    public ResponseResult getUserDetailInfo(@RequestParam("userId") Long userId) {
        UserDetail userDetail = updateUserDetailService.selectUserDetailInfo(userId);
        return new ResponseResult(200, "获取成功", userDetail);
    }

    /**
     * 更新用户基本信息
     */
    @RequestMapping(value = "/userDetail-post", method = RequestMethod.POST)
    public ResponseResult updateUser(@RequestBody UserDetail userDetail) {
        boolean success = updateUserDetailService.updateUserDetailMessage(userDetail);
        if (success) {
            return new ResponseResult(200, "修改成功");
        } else {
            return new ResponseResult(400, "修改失败");
        }
    }

    /**
     * 验证用户登录情况
     */
    @RequestMapping(value = "/user-info", method = RequestMethod.GET)
    public ResponseResult getUserInfo(HttpServletRequest request) throws Exception {
        //获取token
        String token = request.getHeader("token");
        Claims claims = JwtUtil.parseJWT(token);
        String id = claims.get("sub").toString();
        long id2 = Long.parseLong(id);
        User userInfo = userInfoService.getUserInfo(id2);
        String userName = userInfo.getUserName();
        Long userId = userInfo.getId();
        List<Object> list = new ArrayList<>();
        list.add(userId);
        list.add(userName);
        return new ResponseResult(200, "用户登录状态获取成功", list);
    }

    /**
     * 根据用户id获取用户头像
     *
     * @param id
     * @return
     */
    @RequestMapping("/get-user-head")
    public ResponseResult getUserHead(@RequestParam("id") Long id) {
        String userHead = userInfoService.getUserHead(id);

        return new ResponseResult(200, "获取用户头像成功!", userHead);
    }
}
