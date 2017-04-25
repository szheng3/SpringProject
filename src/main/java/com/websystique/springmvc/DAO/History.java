package com.websystique.springmvc.DAO;

import java.io.InputStream;

/**
 * Created by Shuai Zheng on 4/24/17.
 */
public class History {
    private String username;
    private InputStream result;


    public History(String username, InputStream result) {
        this.username = username;
        this.result = result;
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


}
