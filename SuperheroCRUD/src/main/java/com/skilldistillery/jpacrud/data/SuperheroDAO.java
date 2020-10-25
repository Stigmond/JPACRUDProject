package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Superhero;

public interface SuperheroDAO {

	public Superhero findHeroById(int id);
	public List<Superhero> getAllHeroes();
	public Superhero addHero(Superhero hero);
}
