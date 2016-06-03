package com.gt.hunter.portals.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.hunter.portals.dao.TrainCourseDao;
import com.gt.hunter.portals.domain.TrainCourse;
import com.gt.hunter.portals.domain.TrainStage;
import com.gt.hunter.portals.service.TrainService;

@Service
public class TrainServiceImpl implements TrainService{

	@Autowired
	private TrainCourseDao trainCourseDao;
	
	public List<TrainStage> listCourses(String prjId) {
		List<TrainCourse> courses = trainCourseDao.listCourses(prjId);
		List<TrainStage> stages = new ArrayList<TrainStage>();
		String stageId = null;
		TrainStage ts = null;
		List<TrainCourse> tmpTcList = null;
		if(courses != null && !courses.isEmpty()){
			for(TrainCourse tc : courses){
				if(!tc.getStageId().equals(stageId)){
					ts = new TrainStage();
					ts.setId(tc.getStageId());
					ts.setTitle(tc.getStage());
					ts.setDes(tc.getStageDes());
					tmpTcList = new ArrayList<TrainCourse>();
					ts.setCourses(tmpTcList);
					stageId = tc.getStageId();
					stages.add(ts);
				}
				tc.setStage(null);
				tc.setStageDes(null);
				tmpTcList.add(tc);
			}
		}
		return stages;
	}

}
