package com.zhanwe.hellozw.dao.hibernate;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import com.zhanwe.hellozw.dao.IUserInfoDao;
import com.zhanwe.hellozw.model.UserInfo;

public class UserInfoHibernateDAO extends HibernateDaoSupport implements IUserInfoDao {

	@Override
	public UserInfo findUserById(String id) {
		UserInfo user = (UserInfo) getHibernateTemplate().load(UserInfo.class, id);
		return user;
	}

	@Override
	public UserInfo saveUser(UserInfo user) {
		getHibernateTemplate().save(user);
		return user;
	}
}
