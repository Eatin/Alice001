package com.Alice.web;

import com.Alice.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@RestController
public class ShowController {
	private DataService DataService;

/*    @CrossOrigin(origins = "*", maxAge = 3600)*/
	@RequestMapping(value = "/main")
	public ModelAndView show(String page){

		int pageSize = 9;

		int pageTimes;

		ModelAndView mav = new ModelAndView("main");

		List data = DataService.getData();
		List pic = DataService.getPic();
		List play = DataService.getPlay();
		List aid = DataService.getAid();
		List author = DataService.getAuthor();
		int len = data.size();


		if (len % pageSize == 0){
			pageTimes = len % pageSize;
		}else {
			pageTimes = len % pageSize + 1;
		}

		if (null == page )
		{
			page = "1";
		}

		int startRow = (Integer.parseInt(page)-1) * pageSize;

		List msg = DataService.getDataByPage();
		String item;


		System.out.print(msg);




		mav.getModel().put("pageTimes",pageTimes);
		mav.getModel().put("data",data);
		mav.getModel().put("len",len);
		mav.getModel().put("pic",pic);
		mav.getModel().put("play",play);
		mav.getModel().put("aid",aid);
		mav.getModel().put("author",author);
		mav.getModel().put("msg",author);
//		System.out.print(len);
		return mav;
	}

	@Autowired
	public void setDataService(DataService DataService) {
		this.DataService = DataService;
	}
}
