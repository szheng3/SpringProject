package com.websystique.springmvc.service;

import com.websystique.springmvc.DAO.User;
import com.websystique.springmvc.DAO.UsersDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("usersService")
public class UsersService {

    private UsersDao usersDao;

    @Autowired
    public void setOffersDao(UsersDao usersDao) {
        this.usersDao = usersDao;
    }


    public void create(User user) {
        usersDao.create(user);
    }


    public boolean exists(String username) {
        return usersDao.exists(username);
    }


}
