package com.ttd.fitness.model;

import java.util.Date;


public class FitnessRecord {
    private long id;

    private long peopleId;

    private String peopleName;

    private String photo;

    private String note;

    private String title;

    private long trainId;
    
    private long fitnessId;

    private long duration; // 耗时，秒

    private Date endTime; // 结束时间

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getPeopleId() {
        return peopleId;
    }

    public void setPeopleId(long peopleId) {
        this.peopleId = peopleId;
    }

    public String getPeopleName() {
        return peopleName;
    }

    public void setPeopleName(String peopleName) {
        this.peopleName = peopleName;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getTrainId() {
        return trainId;
    }

    public void setTrainId(long trainId) {
        this.trainId = trainId;
    }

    public long getFitnessId() {
        return fitnessId;
    }

    public void setFitnessId(long fitnessId) {
        this.fitnessId = fitnessId;
    }

    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

}
