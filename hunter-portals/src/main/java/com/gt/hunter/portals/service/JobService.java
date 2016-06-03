package com.gt.hunter.portals.service;

import java.util.List;

import com.gt.hunter.portals.domain.Job;
import com.gt.hunter.portals.domain.PageInfo;

public interface JobService {

	List<Job> listJobs(String queryString,Job job,PageInfo pageInfo);
}
