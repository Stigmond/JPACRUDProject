package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SuperheroTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Superhero superhero;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("Superhero");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		superhero = em.find(Superhero.class,1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		superhero = null;
	}

	@Test
	void test_Superhero_entity_mapping() {
		assertNotNull(superhero);
		assertEquals("Superman", superhero.getName());
		assertEquals("Clark Kent", superhero.getAlias());
		assertEquals(1939, superhero.getYearIntroduced());
		assertEquals("Justice League", superhero.getAffiliation());
		assertEquals("Lex Luthor", superhero.getNemesis());
		assertEquals("Metropolis", superhero.getLocation());
		assertEquals("leap tall buildings in a single bound", superhero.getPowers());
	}

}
