package com.zhanwe.hellozw.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

import org.apache.struts2.json.annotations.JSON;

import com.zhanwe.hellozw.dao.IPersonNavDAO;
import com.zhanwe.hellozw.model.PersonalNav;
import com.zhanwe.hellozw.model.Link;
import com.zhanwe.hellozw.service.IPersonNavService;

@SuppressWarnings("serial")
public class MainAction extends ActionSupport {

	private List<PersonalNav> navList;
	private IPersonNavService personNavService;
	private PersonalNav personalNav;
	
	public MainAction() {
		navList = new ArrayList<PersonalNav>();
	}

	public String index() {
		return SUCCESS;
	}

	/**
	 * 获取导航树节点json
	 * 
	 * @return
	 */
	public String GetNavList() {
		List<PersonalNav> personalNavs = personNavService.findAllPersonalNavs();
		for (PersonalNav p : personalNavs) {
			PersonalNav personalNav = new PersonalNav();
			personalNav.setName(p.getName());
			navList.add(personalNav);
		}
		return SUCCESS;
	}

	/**
	 * 添加导航节点数据
	 * 
	 * @param name
	 * @return
	 */
	public void addNav() {		
		personNavService.savePersonalNav(personalNav);
	}

	public List<PersonalNav> getNavList() {
		return navList;
	}

	@JSON(serialize = false)
	public IPersonNavService getPersonNavService() {
		return personNavService;
	}

	public void setPersonNavService(IPersonNavService personNavService) {
		this.personNavService = personNavService;
	}

	public PersonalNav getPersonalNav() {
		return personalNav;
	}

	public void setPersonalNav(PersonalNav personalNav) {
		this.personalNav = personalNav;
	}
}
