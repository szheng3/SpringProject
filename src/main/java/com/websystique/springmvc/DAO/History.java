package com.websystique.springmvc.DAO;

import java.io.InputStream;
import java.sql.Timestamp;

/**
 * Created by Shuai Zheng on 4/24/17.
 */
public class History {
    private int idtable1;
    private String username;
    private InputStream result;
    private Timestamp date;


    public History(String username, InputStream result) {
        this.username = username;
        this.result = result;
    }

    public History() {

    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public InputStream getResult() {
        return result;
    }

    public void setResult(InputStream result) {
        this.result = result;
    }


    public int getIdtable1() {
        return idtable1;
    }

    public void setIdtable1(int idtable1) {
        this.idtable1 = idtable1;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
