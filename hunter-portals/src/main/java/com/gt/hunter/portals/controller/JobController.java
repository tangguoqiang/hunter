package com.gt.hunter.portals.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gt.hunter.portals.domain.Job;
import com.gt.hunter.portals.domain.PageInfo;
import com.gt.hunter.portals.service.JobService;

/**
 * job controller
 * @author Think
 *
 */
@Controller
@RequestMapping(value ="/job")
public class JobController {

	@Autowired
	private JobService jobService;
	
	/**
	 * 加载jobs
	 * @param job
	 * @param queryString
	 * @return
	 */
	@RequestMapping(value = "/listJobs", method = RequestMethod.POST)
	@ResponseBody
	public List<Job> listJobs(String queryString,Job job,PageInfo pageInfo) {
		return jobService.listJobs(queryString,job,pageInfo);
	}
}
