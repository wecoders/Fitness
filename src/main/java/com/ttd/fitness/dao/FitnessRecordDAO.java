package com.ttd.fitness.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ttd.fitness.model.FitnessRecord;

public interface FitnessRecordDAO {
    FitnessRecord findById(@Param("id") long id);
    List<FitnessRecord> findAll(@Param("offset") int offset, @Param("limit") int limit);
    List<FitnessRecord> findAllByPeople(@Param("id") long id, @Param("offset") int offset, @Param("limit") int limit);
    List<FitnessRecord> findAllByFitness(@Param("id") long id, @Param("offset") int offset, @Param("limit") int limit);
    List<FitnessRecord> findAllByTrain(@Param("id") long id, @Param("offset") int offset, @Param("limit") int limit);
    void create(FitnessRecord record);
}
