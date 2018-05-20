package com.Alice.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;


@RestController
public class GalleryController {
    @Autowired
    private HttpServletRequest request;

    @RequestMapping("/detail")
    public ModelAndView upPage(@RequestParam("id") String id){
        ModelAndView mav = new ModelAndView("detail2");

//        String path = request.getSession().getServletContext().getRealPath("/save/");
        String path = "/save/";


        String video = path + id ;


        mav.getModel().put("video",video);

        return  mav;

    }




}
