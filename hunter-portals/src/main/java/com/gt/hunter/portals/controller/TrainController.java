package com.gt.hunter.portals.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gt.hunter.portals.domain.TrainStage;
import com.gt.hunter.portals.service.TrainService;

@Controller
@RequestMapping(value ="/train")
public class TrainController {

	@Autowired
	private TrainService trainService;
	
	/**
	 * 加载培训课程
	 * @param prjId:预留字段,默认为1
	 * @return
	 */
	@RequestMapping(value = "/listCourses", method = RequestMethod.POST)
	@ResponseBody
	public List<TrainStage> listCourses(String prjId) {
		return trainService.listCourses(prjId);
	}
}
