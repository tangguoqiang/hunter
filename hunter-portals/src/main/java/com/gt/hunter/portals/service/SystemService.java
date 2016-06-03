package com.gt.hunter.portals.service;

import java.util.List;

import com.gt.hunter.portals.domain.Account;
import com.gt.hunter.portals.domain.Banner;

public interface SystemService {

	boolean existsAccount(String account);
	
	void addAccount(String email,String password,String type,String loginType);
	
	Account getAccountByAccAndPass(String account,String password);
	
	List<Banner> listBanners();
}
