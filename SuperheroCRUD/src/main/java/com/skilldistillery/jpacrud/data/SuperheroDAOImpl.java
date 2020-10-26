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
		return em.find(Superhero.class, id);
	}

	@Override
	public List<Superhero> getAllHeroes() {
		String query = "SELECT s from Superhero s ORDER BY name";
		return em.createQuery(query, Superhero.class).getResultList();
	}
	
	@Override
	public Superhero addHero(Superhero hero) {
		em.persist(hero);
		em.flush();
		return hero;
	}

	@Override
	public Superhero deleteHero(int id) {
		Superhero heroToRemove = em.find(Superhero.class, id);
		em.remove(heroToRemove);
		em.flush();
		return heroToRemove;
	}

	@Override
	public Superhero updateHero(Superhero updatedHero) {
		Superhero heroToChange = em.find(Superhero.class, updatedHero.getId());
		heroToChange.setName(updatedHero.getName());
		heroToChange.setAlias(updatedHero.getAlias());
		heroToChange.setYearIntroduced(updatedHero.getYearIntroduced());
		heroToChange.setAffiliation(updatedHero.getAffiliation());
		heroToChange.setNemesis(updatedHero.getNemesis());
		heroToChange.setLocation(updatedHero.getLocation());
		heroToChange.setPowers(updatedHero.getPowers());
		em.flush();
		return heroToChange;
	}


}
