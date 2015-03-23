package com.zhanwe.hellozw.dao.hibernate;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.zhanwe.hellozw.dao.IPersonNavDAO;
import com.zhanwe.hellozw.model.PersonalNav;

public class PersonNavHibernateDAO extends HibernateDaoSupport implements IPersonNavDAO {

	/**
	 * 获取所有的用户导航菜单数据
	 */
	@Override
	public List<PersonalNav> findAllPersonalNav() {
		List<PersonalNav> personalNavs = (List<PersonalNav>) getHibernateTemplate().loadAll(PersonalNav.class);
		return personalNavs;
	}

	/**
	 * 添加用户导航数据
	 */
	@Override
	public void savePersonalNav(PersonalNav personalNav) {
		getHibernateTemplate().save(personalNav);
	}

}
