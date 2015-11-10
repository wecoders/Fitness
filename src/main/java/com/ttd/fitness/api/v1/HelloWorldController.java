package com.ttd.fitness.api.v1;

import java.util.Date;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.springframework.stereotype.Component;


@Component
@Path("/helloworld")
public class HelloWorldController {

    @GET
    public String home() {
        return "Hello World! " + (new Date());
    }
}
