package com.demo;
import java.io.Serializable;

public class Users implements Serializable {

    private int user_id;
    private String emailB;
    private String passwordB;
    private String nameB;


    public Users(String emailB, String nameB, String passwordB) {

        this.emailB = emailB;
        this.nameB = nameB;
        this.passwordB = passwordB;
    }

    public Users() {

    }

    public int getUser_id() {

        return user_id;
    }
    public String getNameB() {

        return nameB;
    }

    public String getEmailB() {

        return emailB;
    }

    public String getPasswordB() {

        return passwordB;
    }
    public void setUser_id(int user_id) {

        this.user_id=user_id;
    }
    public void setNameB(String nameB) {

        this.nameB = nameB;
    }

    public void setEmailB(String emailB) {

        this.emailB = emailB;
    }

    public void setPasswordB(String passwordB) {

        this.passwordB = passwordB;
    }

}
