package com.skilldistillery.jpacrud.data;

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
}
