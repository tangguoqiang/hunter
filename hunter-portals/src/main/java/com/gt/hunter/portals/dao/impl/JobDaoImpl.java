package com.gt.hunter.portals.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.gt.hunter.portals.common.constant.DBConstant;
import com.gt.hunter.portals.common.constant.GloabConstant;
import com.gt.hunter.portals.dao.JobDao;
import com.gt.hunter.portals.domain.Job;
import com.gt.hunter.portals.domain.PageInfo;
import com.gt.hunter.portals.domain.ParamInfo;

@Repository
public class JobDaoImpl extends BaseDaoImpl<Job> implements JobDao{

	public List<Job> listJobs(String queryString,Job job,PageInfo pageInfo){
		StringBuilder sql = new StringBuilder(256);
		sql.append("SELECT T1.id,T1.post,T2.name company,T1.department,T1.place,T1.salary, ")
		   .append("T1.publishTime,T3.name degree,T4.name nature,T5.name experience FROM ")
		   .append(DBConstant.T_COMPANY_JOB).append(" T1 ")
		   .append("INNER JOIN ").append(DBConstant.T_COMPANY_INFO).append(" T2 ")
		   .append("ON T2.id=T1.companyId ")
		   .append("LEFT JOIN ").append(DBConstant.T_SYS_COMCODE).append(" T3 ")
		   .append("ON T3.CODE=T1.degree AND T3.groupName=? ")
		   .append("LEFT JOIN ").append(DBConstant.T_SYS_COMCODE).append(" T4 ")
		   .append("ON T4.CODE=T1.nature AND T4.groupName=? ")
		   .append("LEFT JOIN ").append(DBConstant.T_SYS_COMCODE).append(" T5 ")
		   .append("ON T5.CODE=T1.experience AND T5.groupName=? ")
		   .append("WHERE T1.status=? ");
		
		ParamInfo paramInfo = new ParamInfo();
		paramInfo.setTypeAndData(Types.VARCHAR, GloabConstant.GROUP_DEGREE);
		paramInfo.setTypeAndData(Types.VARCHAR, GloabConstant.GROUP_WORK_NATURE);
		paramInfo.setTypeAndData(Types.VARCHAR, GloabConstant.GROUP_EXPERIENCE);
		paramInfo.setTypeAndData(Types.CHAR, GloabConstant.STATUS_EFFECT);
		
		sql.append("ORDER BY T1.publishTime DESC ");
		return getRecords(sql.toString(), paramInfo,pageInfo, Job.class);
	}
}
