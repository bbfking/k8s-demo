package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: pfXiong
 * @datetime: 2020/4/13 22:57
 * @description:
 */
@RestController
public class HelloController {

    @RequestMapping("/hello")
    public String say() {
        System.out.println("Hello springboot");
        return "hello,this is a springboot demo！~";
    }
}