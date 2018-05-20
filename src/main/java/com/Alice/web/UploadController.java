package com.Alice.web;

import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

import com.Alice.service.unZipFiles;


@RestController
public class UploadController {
    @Autowired
    private HttpServletRequest request;

    @RequestMapping("/up")
    public ModelAndView upfile(){
        ModelAndView mav = new ModelAndView("up2");

        return mav;
    }

    @RequestMapping(value = "/upload" , produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String  upload(@RequestParam("uploadFile") MultipartFile[] uploadFile)
        {
            JSONObject bb = new JSONObject();

            bb.put("Status" , "Success");



            if(uploadFile.length > 0&& uploadFile!=null){
                try{
                    String leftPath = request.getSession().getServletContext().getRealPath("/save/");
                    for (MultipartFile file : uploadFile){
                        file.transferTo(new File(leftPath + file.getOriginalFilename()));
                        try {
                            unZipFiles.unZipFiles(new File(leftPath + file.getOriginalFilename()), "D:/data/");
                            System.out.println("上传并且解压成功");
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }

                }
                catch (Exception e){
                    e.printStackTrace();
                }
            }

        return bb.toString();
        }


    @RequestMapping("list")
    public ModelAndView list(){
        String filePath = request.getSession().getServletContext().getRealPath("/save/");
        ModelAndView mav = new ModelAndView("list");

//        初始化文件列表
        File uploadDest = new File(filePath);
        String[] fileNames = uploadDest.list();
        int len = fileNames.length;


        mav.getModel().put("fileNames",fileNames);
        mav.getModel().put("len",len);
        return mav;
    }
}
