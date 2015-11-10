package com.ttd.fitness.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ttd.fitness.model.Fitness;

public interface FitnessDAO {
    List<Fitness> findAll();
    List<Fitness> findAllDetails();
    Fitness find(@Param("id") long id);
    void create(Fitness fitness);
}
