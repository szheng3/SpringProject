package com.websystique.springmvc.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class HelloWorldController {
//    @RequestMapping(value = {"/products"}, method = RequestMethod.GET)
//    public String productsPage(ModelMap model) {
//        return "products";
//    }
//
//    @RequestMapping(value = {"/contactus"}, method = RequestMethod.GET)
//    public String contactUsPage(ModelMap model) {
//        return "contactus";
//    }
//
//    @RequestMapping(value = {"/create"}, method = RequestMethod.GET)
//    public String create(Model model) {
//        model.addAttribute("offer", new Offer());
//        return "createOffer";
//    }

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String homePage(ModelMap model, HttpServletRequest request) {
        String param1 = request.getParameter("welcome");
//        model.addAttribute("user", getPrincipal());
        for (GrantedAuthority authority : SecurityContextHolder.getContext().getAuthentication().getAuthorities()) {
            String role = authority.getAuthority();
            System.out.println(role);
            if (!authority.getAuthority().equals("ROLE_ANONYMOUS")) {
                model.addAttribute("user", getPrincipal());

            }

        }


        if (param1 != null) {
            return "home";
        }

        for (GrantedAuthority authority : SecurityContextHolder.getContext().getAuthentication().getAuthorities()) {
            String role = authority.getAuthority();
            System.out.println(role);
            if (authority.getAuthority().equals("ROLE_ANONYMOUS")) {
                model.addAttribute("greeting", getPrincipal());

                return "home";
            }

        }
        model.addAttribute("greeting", getPrincipal());


        return "success";
    }


    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "error";
    }

//    @RequestMapping(value = "/login", method = RequestMethod.GET)
//    public String loginPage() {
//        return "login";
//    }


    @RequestMapping(value = "/sucess", method = RequestMethod.GET)
    public String success(ModelMap model) {
        for (GrantedAuthority authority : SecurityContextHolder.getContext().getAuthentication().getAuthorities()) {
            String role = authority.getAuthority();
            System.out.println(role);
            if (!authority.getAuthority().equals("ROLE_ANONYMOUS")) {
                model.addAttribute("user", getPrincipal());

            }

        }

        return "demo";
    }


    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }

    @PostConstruct
    public void reset() {
        System.out.println("post");
    }

    private String getPrincipal() {
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();


        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }

        return userName;
    }

}