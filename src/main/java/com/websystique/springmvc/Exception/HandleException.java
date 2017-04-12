package com.websystique.springmvc.Exception;

import org.springframework.dao.DataAccessException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * Created by Shuai Zheng on 4/10/17.
 */

@ControllerAdvice
public class HandleException {
    @ExceptionHandler(DataAccessException.class)
    public String Exception(Model model, DataAccessException ex) {
        model.addAttribute("message", ex.getMessage());

        return "error";
    }
}
