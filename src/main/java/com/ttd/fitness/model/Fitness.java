package com.ttd.fitness.model;

import java.util.Date;
import java.util.List;


public class Fitness {
    private long id;

    private String title;

    private String category; //分类
    
    private long peopleId;
    
    private long forkFrom;
    
    private int trainType; //计数方式，0：按天, 1：按单次，2：按单次但多个训练
    
    private int trainTimes; //几天， 单次
    
    private Date createdAt;

    private List<FitnessTrain> trains; //  = new HashSet<FitnessTrain>();

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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public List<FitnessTrain> getTrains() {
        return trains;
    }

    public void setTrains(List<FitnessTrain> trains) {
        this.trains = trains;
    }

    public long getPeopleId() {
        return peopleId;
    }

    public void setPeopleId(long peopleId) {
        this.peopleId = peopleId;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public long getForkFrom() {
        return forkFrom;
    }

    public void setForkFrom(long forkFrom) {
        this.forkFrom = forkFrom;
    }

    public int getTrainType() {
        return trainType;
    }

    public void setTrainType(int trainType) {
        this.trainType = trainType;
    }

    public int getTrainTimes() {
        return trainTimes;
    }

    public void setTrainTimes(int trainTimes) {
        this.trainTimes = trainTimes;
    }

   
    
    
}
