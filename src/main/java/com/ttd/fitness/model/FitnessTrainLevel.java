package com.ttd.fitness.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class FitnessTrainLevel {
    private long id;

    @JsonIgnore
    private long fitnessId;

    @JsonIgnore
    private long trainId;

    private int level;

    private String title;

    private int groups;

    private int counterType; // 计数类型, 0:次, 1:时间
    
    private int counterValue; // 计数值，次或秒

    private int sleep;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getFitnessId() {
        return fitnessId;
    }

    public void setFitnessId(long fitnessId) {
        this.fitnessId = fitnessId;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getGroups() {
        return groups;
    }

    public void setGroups(int groups) {
        this.groups = groups;
    }

    public int getSleep() {
        return sleep;
    }

    public void setSleep(int sleep) {
        this.sleep = sleep;
    }

    public long getTrainId() {
        return trainId;
    }

    public void setTrainId(long trainId) {
        this.trainId = trainId;
    }

    public int getCounterType() {
        return counterType;
    }

    public void setCounterType(int counterType) {
        this.counterType = counterType;
    }

    public int getCounterValue() {
        return counterValue;
    }

    public void setCounterValue(int counterValue) {
        this.counterValue = counterValue;
    }

}
