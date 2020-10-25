package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public ModelAndView addHero(Superhero superhero, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("hero", dao.addHero(superhero));
		mv.setViewName("redirect:heroAdded.do");
		return mv;
	}
	
	@RequestMapping(path="heroAdded.do")
	public ModelAndView created() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("heroadded");
		return mv;
	}
	
	@RequestMapping(path="deleteHero.do")
	public ModelAndView deleteHero(int id, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("hero", dao.deleteHero(id));
		mv.setViewName("redirect:heroDeleted.do");
		return mv;
	}
	
	@RequestMapping(path="heroDeleted.do")
	public ModelAndView deleted() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("herodeleted");
		return mv;
	}
	
	@RequestMapping(path="gotoaddpage.do")
	public ModelAndView newPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addhero");
		return mv;
	}
	
	@RequestMapping(path="updateHero.do")
	public ModelAndView update(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("hero", dao.findHeroById(id));
		mv.setViewName("updatehero");
		return mv;
	}
	
	@RequestMapping(path="makeUpdates.do")
	public ModelAndView update(Superhero superhero, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		System.out.println(superhero);
		redir.addFlashAttribute("hero", dao.updateHero(superhero));
		mv.setViewName("redirect:heroUpdated.do");
		return mv;
}
	@RequestMapping(path="heroUpdated.do")
	public ModelAndView updated() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("heroupdated");
		return mv;
	}
}