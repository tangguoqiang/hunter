package com.gt.hunter.portals.dao;

import java.util.List;

import com.gt.hunter.portals.domain.Banner;

public interface BannerDao extends BaseDao<Banner>{

	List<Banner> listBanners();
}
