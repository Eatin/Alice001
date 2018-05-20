package com.Alice.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;


@RestController
public class ManController {
    @Autowired
    private HttpServletRequest request;

    @RequestMapping("/manage")
    public ModelAndView ManPage(){
        ModelAndView mav = new ModelAndView("manage");
        return mav;
    }

    @RequestMapping("/blank")
    public ModelAndView BlkPage(){
        ModelAndView mav = new ModelAndView("blank");
        return mav;
    }

    @RequestMapping("/tables")
    public ModelAndView TablePage(){
        ModelAndView mav = new ModelAndView("tables");
        return mav;
    }


}
