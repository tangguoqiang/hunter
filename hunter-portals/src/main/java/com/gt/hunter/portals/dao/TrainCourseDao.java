package com.gt.hunter.portals.dao;

import java.util.List;

import com.gt.hunter.portals.domain.TrainCourse;

public interface TrainCourseDao extends BaseDao<TrainCourse>{

	List<TrainCourse> listCourses(String prjId);
}
