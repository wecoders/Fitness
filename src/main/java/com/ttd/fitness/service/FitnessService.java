package com.ttd.fitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ttd.fitness.dao.FitnessDAO;
import com.ttd.fitness.model.Fitness;

@Service
public class FitnessService {
    @Autowired
    private FitnessDAO fitnessDao;
    
    public List<Fitness> findAll() {
        return fitnessDao.findAll();
    }
    
    public List<Fitness> findAllDetails() {
        return fitnessDao.findAllDetails();
    }
    
    public Fitness find(long id) {
        return fitnessDao.find(id);
    }
    
    
    public void create(Fitness fitness) {
        fitnessDao.create(fitness);
    }
}
