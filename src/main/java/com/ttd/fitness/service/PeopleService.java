package com.ttd.fitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ttd.fitness.dao.PeopleDAO;
import com.ttd.fitness.model.People;

@Service
public class PeopleService {
    @Autowired
    private PeopleDAO dao;

    public People findById(long id) {
        return dao.findById(id);
    }
    
    public People findByName(String name) {
        return dao.findByName(name);
    }

    public List<People> findAll() {
        return dao.findAll();
    }
 

    
    public void create(People people) {
        dao.create(people);
    }
    
    public void updateName(People people) {
        dao.updateName(people);
    }

}
