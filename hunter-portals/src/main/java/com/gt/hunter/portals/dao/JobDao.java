package com.gt.hunter.portals.dao;

import java.util.List;

import com.gt.hunter.portals.domain.Job;
import com.gt.hunter.portals.domain.PageInfo;

public interface JobDao extends BaseDao<Job>{

	List<Job> listJobs(String queryString,Job job,PageInfo pageInfo);
}
