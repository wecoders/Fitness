package com.ttd.fitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ttd.fitness.dao.FitnessRecordDAO;
import com.ttd.fitness.model.FitnessRecord;

@Service
public class FitnessRecordService {
    @Autowired
    private FitnessRecordDAO dao;

    public FitnessRecord findById(long id) {
        return dao.findById(id);
    }

    public List<FitnessRecord> findAll(int page, int pageSize) {
        int offset = (page-1)*pageSize;
        return dao.findAll(offset, pageSize);
    }

    public List<FitnessRecord> findAllByPeople(long id, int page, int pageSize) {
        int offset = (page-1)*pageSize;
        return dao.findAllByPeople(id, offset, pageSize);
    }

    public List<FitnessRecord> findAllByTrain(long id, int page, int pageSize) {
        int offset = (page-1)*pageSize;
        return dao.findAllByTrain(id, offset, pageSize);
    }
    
    public List<FitnessRecord> findAllByFitness(long id, int page, int pageSize) {
        int offset = (page-1)*pageSize;
        return dao.findAllByFitness(id, offset, pageSize);
    }

    
    public void create(FitnessRecord record) {
        dao.create(record);
    }

}
