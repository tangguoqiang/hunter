package com.gt.hunter.portals.service;

import java.util.List;

import com.gt.hunter.portals.domain.TrainStage;

public interface TrainService{

	List<TrainStage> listCourses(String prjId);
}
