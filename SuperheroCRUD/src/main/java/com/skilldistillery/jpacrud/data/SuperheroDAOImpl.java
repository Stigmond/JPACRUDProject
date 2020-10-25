package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Superhero;

@Transactional
@Service
public class SuperheroDAOImpl implements SuperheroDAO {

	@PersistenceContext
	private EntityManager em;
	
	public Superhero findHeroById(int id) {
	
		return em.find(Superhero.class,  id);
	}

	@Override
	public List<Superhero> getAllHeroes() {
		String query = "SELECT s from Superhero s";
		return em.createQuery(query, Superhero.class).getResultList();
	}
	
	@Transactional
	@Override
	public Superhero addHero(Superhero hero) {
		Superhero newHero = hero;
//		String query = "INSERT INTO superhero (name, alias, yearIntroduced, affiliation, nemesis, location, powers) VALUES (?, ?, ?, ?, ?, ?, ?)";
		em.persist(hero);
		return newHero;
	}
}
