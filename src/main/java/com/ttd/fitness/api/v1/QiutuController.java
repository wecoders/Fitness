package com.ttd.fitness.api.v1;


import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.springframework.stereotype.Component;

import com.ttd.fitness.model.Version;


@Component
@Path("/v1/qiutu")
@Produces(MediaType.APPLICATION_JSON)
public class QiutuController {

    @GET
    @Path("/version")
    public Version getVersion() {
        Version v = new Version();
        v.setVersion("1.1");
        v.setMessage("增加训练记录");
        return v;
    }
    
    
}
