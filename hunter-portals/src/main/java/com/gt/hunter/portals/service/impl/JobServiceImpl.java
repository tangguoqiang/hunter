package com.gt.hunter.portals.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.hunter.portals.dao.JobDao;
import com.gt.hunter.portals.domain.Job;
import com.gt.hunter.portals.domain.PageInfo;
import com.gt.hunter.portals.service.JobService;

@Service
public class JobServiceImpl implements JobService{
	
	@Autowired
	private JobDao jobDao;

	public List<Job> listJobs(String queryString,Job job,PageInfo pageInfo){
		return jobDao.listJobs(queryString, job, pageInfo);
	}
}
