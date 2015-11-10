package com.ttd.fitness.config;

import org.glassfish.jersey.server.ResourceConfig;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import com.ttd.fitness.api.v1.FitnessController;
import com.ttd.fitness.api.v1.FitnessRecordController;
import com.ttd.fitness.api.v1.HelloController;
import com.ttd.fitness.api.v1.HelloWorldController;
import com.ttd.fitness.api.v1.PeopleController;

@Component
//@Configuration
public class JerseyConfigure extends ResourceConfig {
    public JerseyConfigure() {
        register(HelloController.class);
        register(HelloWorldController.class);
        register(FitnessController.class);
        register(FitnessRecordController.class);
        register(PeopleController.class);
//        register(ReverseEndpoint.class);
    }
}