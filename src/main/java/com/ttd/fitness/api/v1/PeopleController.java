package com.ttd.fitness.api.v1;


import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.hibernate.validator.constraints.NotEmpty;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ttd.crypt.BCrypt;
import com.ttd.fitness.model.People;
import com.ttd.fitness.service.PeopleService;
import com.ttd.fitness.vo.Status;
import com.ttd.fitness.vo.StatusObject;

@Component
@Path("/v1/people")
@Produces(MediaType.APPLICATION_JSON)
public class PeopleController {
    private static Logger logger = LoggerFactory.getLogger(PeopleController.class);

    @Autowired
    private PeopleService peopleService;

    @POST
    @Path("/create")
    @Consumes("application/x-www-form-urlencoded")
    public People create(@FormParam("password") String password) {
        People people = new People();
        if (password != null && !"".equals(password)) {
            String hashed = BCrypt.hashpw(password, BCrypt.gensalt(12));
            people.setPassword(hashed);
        } else {
            String hashed = BCrypt.hashpw(BCrypt.gensalt(12), BCrypt.gensalt(12));
            people.setPassword(hashed);
        }
        logger.debug("password: {}", people.getPassword());
        peopleService.create(people);
        people.setName("NO" + people.getId());
        peopleService.updateName(people);
        return people;
    }
    
    @POST
    @Path("/login")
    @Consumes("application/x-www-form-urlencoded")
    public StatusObject<People> login(@FormParam("username") String username, @FormParam("password") String password, @FormParam("timestamp") String timestamp
            ) {
        People people = peopleService.findByName(username);
        if (people == null) {
            StatusObject<People> status = new StatusObject<People>(new Status(Status.NOTEXIST_CODE, "用户名不存在"));
            return status;
        }
        if(BCrypt.checkpw(password, people.getPassword())) {
            return new StatusObject<People>(Status.OK, people);
        }else {
            return new StatusObject<People>(new Status(Status.ERROR_CODE, "密码不正确"));
        }
    }
    

    @POST
    @Path("/register")
    @Consumes("application/x-www-form-urlencoded")
    public StatusObject<People> register(@NotEmpty @FormParam("username") String username, @FormParam("password") String password,
            @FormParam("crypted") int crypted) {

        People people = peopleService.findByName(username);
        if (people != null) {
            StatusObject<People> status = new StatusObject<People>(new Status(Status.DUPLICATE_CODE, "用户名已经被注册"));
            return status;
        }

        people = new People();
        people.setToken(BCrypt.toMD5(BCrypt.gensalt(10)));
        people.setName(username);
        if (crypted == 1) {
            people.setPassword(password);
        } else {
            String hashed = BCrypt.hashpw(password, BCrypt.gensalt(12));
            people.setPassword(hashed);
        }

        peopleService.create(people);
        return new StatusObject<People>(Status.OK, people);
    }

   

}
