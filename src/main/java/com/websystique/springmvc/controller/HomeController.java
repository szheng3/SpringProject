package com.websystique.springmvc.controller;


import com.websystique.springmvc.DAO.Offer;
import com.websystique.springmvc.DAO.OfferDAO;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

/**
 * Created by Shuai Zheng on 4/6/17.
 */
@Controller
public class HomeController {

    @Resource
    private OfferDAO offerDAO;


//    @RequestMapping(value = "/")
//    public String Home(HttpSession session) {
//        session.setAttribute("name", "Mike");
//        return "home";
//    }
//
//    @RequestMapping(value = "/")
//    public ModelAndView Home() {
//        ModelAndView mv = new ModelAndView("home");
//        Map<String, Object> model = mv.getModel();
//        model.put("name", "<b>alice</b>");
//        return mv;
//    }


    @RequestMapping(value = "/")
    public String Home(Model model) {
        Offer offers = offerDAO.getOffers(1);
        model.addAttribute("offers", offers);
//        model.addAttribute("address", "Mike");
        model.addAttribute("title", "Shuai Zheng");


        return "home";
    }


//    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
//    public String home(ModelMap model) {
//        return "home";
//    }

    @RequestMapping(value = {"/products"}, method = RequestMethod.GET)
    public String productsPage(ModelMap model) {
        return "products";
    }

    @RequestMapping(value = {"/contactus"}, method = RequestMethod.GET)
    public String contactUsPage(ModelMap model) {
        return "contactus";
    }

    @RequestMapping(value = {"/create"}, method = RequestMethod.GET)
    public String create(Model model) {
        model.addAttribute("offer", new Offer());
        return "createOffer";
    }

    @RequestMapping(value = {"/doCreate"}, method = RequestMethod.POST)
    public String docreate(ModelMap model, @Valid Offer offer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            List<ObjectError> errors = bindingResult.getAllErrors();
            for (ObjectError error : errors
                    ) {
                System.out.println(error.getDefaultMessage());
            }
            return "createOffer";

        } else {
            return "home";

        }
    }
}


