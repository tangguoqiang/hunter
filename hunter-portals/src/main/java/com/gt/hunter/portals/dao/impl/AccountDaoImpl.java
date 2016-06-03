package com.gt.hunter.portals.dao.impl;

import java.sql.Types;

import org.springframework.stereotype.Repository;

import com.gt.hunter.portals.common.constant.DBConstant;
import com.gt.hunter.portals.dao.AccountDao;
import com.gt.hunter.portals.domain.Account;
import com.gt.hunter.portals.domain.ParamInfo;

@Repository
public class AccountDaoImpl extends BaseDaoImpl<Account> implements AccountDao{

	public Account getAccount(String account){
		StringBuilder sql = new StringBuilder(128);
		sql.append("SELECT id FROM ").append(DBConstant.T_ACCOUNT)
		   .append(" WHERE email=? ");
		ParamInfo paramInfo = new ParamInfo(1);
		paramInfo.setTypeAndData(Types.VARCHAR, account);
		return getRecord(sql.toString(), paramInfo, Account.class);
	}
	
	public Account getAccountByAccAndPass(String account,String password){
		StringBuilder sql = new StringBuilder(128);
		sql.append("SELECT id,name,type FROM ").append(DBConstant.T_ACCOUNT)
		   .append(" WHERE email=? AND password=? ");
		ParamInfo paramInfo = new ParamInfo(2);
		paramInfo.setTypeAndData(Types.VARCHAR, account);
		paramInfo.setTypeAndData(Types.VARCHAR, password);
		return getRecord(sql.toString(), paramInfo, Account.class);
	}
}
