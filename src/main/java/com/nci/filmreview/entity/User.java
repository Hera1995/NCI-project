package com.nci.filmreview.entity;

public class User {
    //data members
    private Integer id;
    private String email;
    private String Fname;
    private String Lname;
    private String password;

    //constructors
    public User() {
    }

    public User(Integer id, String email, String fname, String lname, String password) {
        this.id = id;
        this.email = email;
        Fname = fname;
        Lname = lname;
        this.password = password;
    }

    //setters and getters
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFname() {
        return Fname;
    }

    public void setFname(String fname) {
        Fname = fname;
    }

    public String getLname() {
        return Lname;
    }

    public void setLname(String lname) {
        Lname = lname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
