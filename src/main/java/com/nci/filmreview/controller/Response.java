package com.nci.filmreview.controller;

public class Response<T> {
    private int status;
    private String msg;
    private T data;

    public static <T> Response<T> ok(T t) {
        Response<T> response = new Response<>();
        response.status = 200;
        response.msg = "Success";
        response.data = t;

        return response;
    }

    public static <T> Response<T> error(String msg) {
        Response<T> response = new Response<>();
        response.status = 500;
        response.msg = msg;

        return response;
    }
}
