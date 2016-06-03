package com.gt.hunter.portals.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.gt.hunter.portals.common.constant.DBConstant;
import com.gt.hunter.portals.common.constant.GloabConstant;
import com.gt.hunter.portals.dao.TrainCourseDao;
import com.gt.hunter.portals.domain.ParamInfo;
import com.gt.hunter.portals.domain.TrainCourse;

@Repository
public class TrainCourseDaoImpl extends BaseDaoImpl<TrainCourse> implements TrainCourseDao{

	public List<TrainCourse> listCourses(String prjId) {
		StringBuilder sql = new StringBuilder(256);
		sql.append("SELECT T1.id,T1.title,T1.costTime,T1.url,T1.img,T1.type, ")
		   .append("T2.id stageId,T2.title stage,T2.des stageDes ")
		   .append("FROM ").append(DBConstant.T_TRAIN_COURSE).append(" T1 ")
		   .append("INNER JOIN ").append(DBConstant.T_TRAIN_STAGE).append(" T2 ")
		   .append("ON T2.id=T1.stageId AND T2.prjId=? ")
		   .append("WHERE T1.status=? ")
		   .append("ORDER BY T2.orderNo ASC,T1.orderNo ASC ");
		
		ParamInfo paramInfo = new ParamInfo();
		paramInfo.setTypeAndData(Types.BIGINT, prjId);
		paramInfo.setTypeAndData(Types.CHAR, GloabConstant.STATUS_EFFECT);
		return getRecords(sql.toString(), paramInfo, TrainCourse.class);
	}

}
