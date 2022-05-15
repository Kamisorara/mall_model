package com.mall.web.controller.test;


import com.mall.entity.entity.resp.ResponseResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
//    @PreAuthorize("hasAuthority('system:dept:list')")
    public ResponseResult helloController() {
        return new ResponseResult(200, "hello");
    }
}
