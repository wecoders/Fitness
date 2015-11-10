package com.ttd.fitness.api.v1;

import java.util.Date;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ttd.fitness.model.Fitness;
import com.ttd.fitness.service.FitnessService;


@Component
@Path("/v1/fitness")
@Produces(MediaType.APPLICATION_JSON)
public class FitnessController {

    @Autowired
    FitnessService fitnessService;

    @GET
    @Path("/list_all")
    public List<Fitness> listAll() {
        return fitnessService.findAll();
    }
    
    @GET
    @Path("/list_all_details")
    public List<Fitness> listAllDetails() {
        return fitnessService.findAllDetails();
    }
    
    @GET
    @Path("/show/{id}")
    public Fitness show(@PathParam("id") long id) {
        return fitnessService.find(id);
    }
    
    @POST
    @Path("/create")
    @Consumes("application/x-www-form-urlencoded")
    public Fitness create(@FormParam("token") String token, @FormParam("title") String title, @FormParam("counterType") int counterType, @FormParam("counterValue") int counterValue) {
        int peopleId = 0; // loadPeopleByToken(token)
        Fitness fit = new Fitness();
        fit.setTitle(title);
        fit.setPeopleId(peopleId);
        fit.setCounterType(counterType);
        fit.setCounterValue(counterValue);
        fit.setCreatedAt(new Date());
        fitnessService.create(fit);
        return fit;
    }
    
}
