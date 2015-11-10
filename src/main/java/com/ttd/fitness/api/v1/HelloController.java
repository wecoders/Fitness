package com.ttd.fitness.api.v1;

import java.util.Date;


import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value="/hello")
public class HelloController {

    @RequestMapping("/greeting")
    public String home() {
        return "Hello World! " + (new Date());
    }
}
