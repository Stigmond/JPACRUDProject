package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.SuperheroDAO;
import com.skilldistillery.jpacrud.entities.Superhero;

@Controller
public class SuperheroController {

	@Autowired
	private SuperheroDAO dao;
	@RequestMapping(path = "/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("heroes", dao.getAllHeroes());
		mv.setViewName("index");
		return mv;
		}
	
	@RequestMapping(path = "getHero.do")
	public ModelAndView getHero(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("hero", dao.findHeroById(id));
		mv.setViewName("heroinfo");
		return mv;
	}
	
	@RequestMapping(path = "addHero.do")
	public ModelAndView addHero(Superhero superhero) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("hero", dao.addHero(superhero));
		mv.setViewName("heroinfo");
		return mv;
	}
}
