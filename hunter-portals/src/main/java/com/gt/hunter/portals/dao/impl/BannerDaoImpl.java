package com.gt.hunter.portals.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.gt.hunter.portals.common.constant.DBConstant;
import com.gt.hunter.portals.common.constant.GloabConstant;
import com.gt.hunter.portals.dao.BannerDao;
import com.gt.hunter.portals.domain.Banner;
import com.gt.hunter.portals.domain.ParamInfo;

@Repository
public class BannerDaoImpl extends BaseDaoImpl<Banner> implements BannerDao{

	public List<Banner> listBanners(){
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT id,title,url FROM ")
		   .append(DBConstant.T_SYS_BANNER)
		   .append(" WHERE status=? ")
		   .append("ORDER BY orderNo asc LIMIT 5 ");
		ParamInfo param = new ParamInfo(1);
		param.setTypeAndData(Types.CHAR, GloabConstant.STATUS_EFFECT);
		return getRecords(sql.toString(), param, Banner.class);
	}
}
