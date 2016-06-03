package com.gt.hunter.portals.dao;

import com.gt.hunter.portals.domain.Account;

public interface AccountDao extends BaseDao<Account>{

	Account getAccount(String account);
	
	Account getAccountByAccAndPass(String account,String password);
}
