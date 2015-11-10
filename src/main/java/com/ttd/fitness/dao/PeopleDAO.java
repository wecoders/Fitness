package com.ttd.fitness.dao;

import java.util.List;

import com.ttd.fitness.model.People;

public interface PeopleDAO {
    People findById(long id);
    People findByName(String name);
    List<People> findAll();
    void create(People people);
    void updateName(People people);
}
