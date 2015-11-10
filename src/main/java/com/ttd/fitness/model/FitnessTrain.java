package com.ttd.fitness.model;

import java.util.List;


 
 
public class FitnessTrain {
    private long id;

    private String title;

    private long fitnessId;
    
    private int counterValue; //counterType==0按天：第一天，第..天, counterType==1 or 2,按次=1，

    private List<FitnessTrainLevel> levels;

    private int levelRelation; //训练直接的关系 0:顺序  1:或者关系
    
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

    public List<FitnessTrainLevel> getLevels() {
        return levels;
    }

    public void setLevels(List<FitnessTrainLevel> levels) {
        this.levels = levels;
    }

   

    public int getLevelRelation() {
        return levelRelation;
    }

    public void setLevelRelation(int levelRelation) {
        this.levelRelation = levelRelation;
    }

    public int getCounterValue() {
        return counterValue;
    }

    public void setCounterValue(int counterValue) {
        this.counterValue = counterValue;
    }

    
}
