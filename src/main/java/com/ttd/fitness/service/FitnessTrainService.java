package com.ttd.fitness.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ttd.fitness.dao.FitnessTrainDAO;
import com.ttd.fitness.model.FitnessTrain;

@Service
public class FitnessTrainService {
    @Autowired
    private FitnessTrainDAO fitnessTrainDao;
    
    public FitnessTrain find(long id) {
        return fitnessTrainDao.find(id);
    }
    
}
