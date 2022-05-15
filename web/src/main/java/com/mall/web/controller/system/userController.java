package com.mall.web.controller.system;


import com.mall.dao.mapper.UserMapper;
import com.mall.entity.entity.User;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.utils.JwtUtil;
import com.mall.service.service.LoginService;
import com.mall.service.service.UserInfoService;
import com.mall.service.service.VerifyService;
import io.jsonwebtoken.Claims;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResponseResult login(@RequestParam("username") String username,
                                @RequestParam("password") String password) {
        User user = new User();
        user.setUserName(username);
        user.setPassword(password);
        //登录操作
        return loginService.login(user);
    }

    //注册接口
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ResponseResult register(@RequestParam("username") String username,
                                   @RequestParam("password") String password,
                                   @RequestParam("password2") String passwordRepeat,
                                   @RequestParam("email") String email,
                                   @RequestParam("verify") String verify) {
        Map<String, Object> map = new HashMap<>();
        try {
            if (verifyService.doVerify(email, verify) && password.equals(passwordRepeat)) {
                User user = new User();
                user.setUserName(username);
                //这里需要加密存储 ,后面封装到service里面
                BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
                String encode = encoder.encode(password);
                user.setPassword(encode);
                userMapper.insert(user);
                map.put("Info", email + "用户" + "注册成功！");
                return new ResponseResult(200, "注册成功!", map);
            } else {
                return new ResponseResult(400, "注册失败，请检查邮箱验证码或是密码是是否输入正确");
            }
        } catch (Exception e) {
            return new ResponseResult(400, "发生未知错误!");
        }
    }

    //发送验证码
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

    //退出
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ResponseResult logout() {
        return loginService.logout();
    }

    //验证用户登录情况
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
        return new ResponseResult(200, "获取成功", list);
    }
}
