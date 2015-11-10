package com.ttd.fitness.api.v1;

import java.util.Date;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Autowired;

import com.ttd.fitness.model.FitnessRecord;
import com.ttd.fitness.service.FitnessRecordService;
import com.ttd.fitness.vo.Status;


@Path("/v1/fitness/record")
@Produces(MediaType.APPLICATION_JSON)
public class FitnessRecordController {
    
    @Autowired
    private FitnessRecordService fitnessRecordService;



    public FitnessRecordController() {
    }
    
    @POST
    @Path("/create")
    @Consumes("application/x-www-form-urlencoded")
    public Status createFitnessRecord(
//            @Valid FitnessRecord fitnessRecord
            @FormParam("people_id") long peopleId,
            @FormParam("people_name") String peopleName, 
            @FormParam("fitness_id") long fitnessId,
            @FormParam("train_id") long trainId,
            @NotEmpty
            @FormParam("title") String title,
            @FormParam("photo") String photo,
            @FormParam("note") String note,
            @FormParam("duration") long duration,
            @FormParam("end_time") long endTime
            ) {
        FitnessRecord fitnessRecord = new FitnessRecord();
        fitnessRecord.setPeopleId(peopleId);
        fitnessRecord.setPeopleName(peopleName);
        fitnessRecord.setTitle(title);
        fitnessRecord.setDuration(duration);
        Date endDate;
        if(endTime == 0) {
            endDate = new Date();
        }else {
            endDate = new Date(endTime);
        }
        fitnessRecord.setEndTime(endDate);
        fitnessRecord.setTrainId(trainId);
        fitnessRecord.setFitnessId(fitnessId);
        fitnessRecord.setPhoto(photo);
        fitnessRecord.setNote(note);
        
        fitnessRecordService.create(fitnessRecord);
        return Status.OK;
    }

    @GET
    @Path("/show/{id}")
    public FitnessRecord showFitnessRecord(@PathParam("id") long id) {
        return fitnessRecordService.findById(id);
    }
    
    @GET
    @Path("/list_all")
    public List<FitnessRecord> listAll(@DefaultValue("1") @QueryParam("page") int page, @DefaultValue("10") @QueryParam("page_size") int pageSize) {
        return fitnessRecordService.findAll(page, pageSize);
    }
    
    @GET
    @Path("/list_by_people")
    public List<FitnessRecord> listFitnessByPeople(@QueryParam("people_id") long id,
            @DefaultValue("1") @QueryParam("page") int page, @DefaultValue("10") @QueryParam("page_size") int pageSize) {
        return fitnessRecordService.findAllByPeople(id,page, pageSize);
    }
    
    @GET
    @Path("/list_by_fitness")
    public List<FitnessRecord> listFitnessByFitness(@QueryParam("fitness_id") long id,
            @DefaultValue("1") @QueryParam("page") int page, @DefaultValue("10") @QueryParam("page_size") int pageSize) {
        return fitnessRecordService.findAllByFitness(id,page, pageSize);
    }
    
    @GET
    @Path("/list_by_train")
    public List<FitnessRecord> listFitnessByTrain(@QueryParam("train_id") long id,
            @DefaultValue("1") @QueryParam("page") int page, @DefaultValue("10") @QueryParam("page_size") int pageSize) {
        return fitnessRecordService.findAllByTrain(id,page, pageSize);
    }
}
