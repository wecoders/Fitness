package com.ttd.fitness.api.v1;


import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ttd.fitness.model.FitnessTrain;
import com.ttd.fitness.service.FitnessTrainService;

@Component
@Path("/v1/fitness/train")
@Produces(MediaType.APPLICATION_JSON)
public class FitnessTrainController {

    @Autowired
    FitnessTrainService fitnessTrainService;

    @GET
    @Path("/show/{id}")
    public FitnessTrain show(@PathParam("id") long id) {
        return fitnessTrainService.find(id);
    }
    
}
