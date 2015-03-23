package com.zhanwe.hellozw.service.spring;

import java.util.List;

import com.zhanwe.hellozw.dao.IPersonNavDAO;
import com.zhanwe.hellozw.model.PersonalNav;
import com.zhanwe.hellozw.service.IPersonNavService;

public class PersonNavSpringImpl implements IPersonNavService {

	private IPersonNavDAO personNavDAO;

	/**
	 * 获取所有的用户导航菜单数据
	 */
	@Override
	public List<PersonalNav> findAllPersonalNavs() {
		List<PersonalNav> personalNavs = null;
		try {
			personalNavs = getPersonNavDAO().findAllPersonalNav();
		} catch (RuntimeException e) {
			System.out.println("findAllPersonalNavs方法出错，出错原因：" + e.getMessage());
		}
		return personalNavs;
	}

	@Override
	public void setPersonNavDAO(IPersonNavDAO personNavDAO) {
		this.personNavDAO = personNavDAO;
	}

	private IPersonNavDAO getPersonNavDAO() {
		return personNavDAO;
	}

	/**
	 * 添加用户导航数据
	 */
	@Override
	public void savePersonalNav(PersonalNav personalNav) {
		try {
			personNavDAO.savePersonalNav(personalNav);		
		} catch (Exception e) {
			System.out.println("addPersonalNav方法出错，出错原因：" + e.getMessage());
		}		
	}
}
