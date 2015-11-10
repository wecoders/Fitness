package com.ttd.fitness.vo;

public class Status {
    private int code;
    private String message;
    
    public final static Status OK = new Status(200, "OK");
    public final static Status FAIL = new Status(500, "FAIL");
    
    public final static int ERROR_CODE = 1000;
    public final static int DUPLICATE_CODE = 1001; 
    public final static int NOTEXIST_CODE = 1002; 
    
    
    public Status(int code, String message) {
        this.code = code;
        this.message = message;
    }
 

    public int getCode() {
        return code;
    }


    public void setCode(int code) {
        this.code = code;
    }


    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
