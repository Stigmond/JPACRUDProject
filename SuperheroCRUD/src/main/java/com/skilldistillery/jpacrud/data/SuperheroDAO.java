package com.skilldistillery.jpacrud.data;

import com.skilldistillery.jpacrud.entities.Superhero;

public interface SuperheroDAO {

	public Superhero findHeroById(int id);
}
