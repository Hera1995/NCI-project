package com.nci.filmreview.entity;

import jakarta.persistence.*;

import java.util.Date;


@Entity
@Table//(name = "Review")
public class Review {

    //data members
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Integer userId;

    private String username;

    private String imdbId;

    private Date date;

    private String content;


    //constructors
    public Review() {
    }

    public Review(Integer id, Integer userId, String imdbId, Date date, String content) {
        this.id = id;
        this.userId = userId;
        this.imdbId = imdbId;
        this.date = date;
        this.content = content;
    }

    //getters and setters

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getImdbId() {
        return imdbId;
    }

    public void setImdbId(String imdbId) {
        this.imdbId = imdbId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
