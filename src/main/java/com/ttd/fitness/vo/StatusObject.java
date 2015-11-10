package com.ttd.fitness.vo;

public class StatusObject<T> {
    private Status status;
    private T object;
    
    public StatusObject(int code, String message) {
        this(new Status(code, message));
    }
    
    
    public StatusObject(Status status) {
        this.status = status;
    }

    
    public StatusObject(Status status, T object) {
        this.status = status;
        this.object = object;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }


    public T getObject() {
        return object;
    }

    public void setObject(T object) {
        this.object = object;
    }
    
    
}
