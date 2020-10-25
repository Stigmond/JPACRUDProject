package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Superhero;

public interface SuperheroDAO {

	public Superhero addHero(Superhero hero);//Create
	public Superhero findHeroById(int id);//Read
	public List<Superhero> getAllHeroes();//Read
	public Superhero updateHero(Superhero updatedHero);//Update
	public Superhero deleteHero(int id);//Delete

}
