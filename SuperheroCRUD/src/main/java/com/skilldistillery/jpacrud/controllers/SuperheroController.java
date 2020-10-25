package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.SuperheroDAO;

@Controller
public class SuperheroController {

	@Autowired
	private SuperheroDAO dao;
	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(path = "getHero.do")
	public ModelAndView getHero(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("hero", dao.findHeroById(id));
		mv.setViewName("heroinfo");
		return mv;
	}
}
