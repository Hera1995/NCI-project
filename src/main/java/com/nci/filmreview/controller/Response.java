package com.nci.filmreview.controller;

public class Response<T> {
    private int status;
    private String msg;
    private T data;

    public static <T> Response<T> ok(T t) {
        Response<T> response = new Response<>();
        response.setStatus(200);
        response.setMsg("Success");
        response.setData(t);

        return response;
    }

    public static <T> Response<T> error(String msg) {
        Response<T> response = new Response<>();
        response.setStatus(500);
        response.setMsg(msg);

        return response;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
