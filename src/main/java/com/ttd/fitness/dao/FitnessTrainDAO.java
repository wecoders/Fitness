package com.ttd.fitness.dao;


import org.apache.ibatis.annotations.Param;

import com.ttd.fitness.model.FitnessTrain;

public interface FitnessTrainDAO {
    FitnessTrain find(@Param("id") long id);
}
