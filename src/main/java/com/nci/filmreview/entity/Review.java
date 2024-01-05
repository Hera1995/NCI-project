package com.nci.filmreview.entity;

import jakarta.persistence.*;
import java.util.Date;


@Entity
@Table//(name = "Review")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Integer userID;

    private String imdbID;

    @Temporal(TemporalType.DATE)
    private Date date;

    private String content;


    //constructors
    public Review() {
    }

    public Review(Integer id, Integer userID, String imdbID, Date date, String content) {
        this.id = id;
        this.userID = userID;
        this.imdbID = imdbID;
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

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public String getImdbID() {
        return imdbID;
    }

    public void setImdbID(String imdbID) {
        this.imdbID = imdbID;
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
