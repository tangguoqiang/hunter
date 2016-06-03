package com.gt.hunter.portals.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.hunter.portals.common.constant.DBConstant;
import com.gt.hunter.portals.common.constant.GloabConstant;
import com.gt.hunter.portals.common.utils.MD5Util;
import com.gt.hunter.portals.dao.AccountDao;
import com.gt.hunter.portals.dao.BannerDao;
import com.gt.hunter.portals.domain.Account;
import com.gt.hunter.portals.domain.Banner;
import com.gt.hunter.portals.service.SystemService;

@Service
public class SystemServiceImpl implements SystemService{
	
	@Autowired
	private AccountDao accountDao;
	
	@Autowired
	private BannerDao bannerDao;

	public boolean existsAccount(String account){
		Account acc = accountDao.getAccount(account);
		if(acc == null)
			return false;
		return true;
	}
	
	public void addAccount(String email,String password,
			String type,String loginType){
		Account acc = new Account();
		acc.setEmail(email);
		acc.setType(type);
		acc.setPassword(MD5Util.string2MD5(password));
		acc.setCreateTime(System.currentTimeMillis() + "");
		acc.setStatus(GloabConstant.STATUS_EFFECT);
		acc.setLoginType(loginType);
		accountDao.insertRecord(acc, DBConstant.T_ACCOUNT);
	}
	
	public Account getAccountByAccAndPass(String account,String password){
		return accountDao.getAccountByAccAndPass(account,password);
	}
	
	public List<Banner> listBanners(){
		return bannerDao.listBanners();
	}
}
