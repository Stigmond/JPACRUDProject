package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Superhero {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String alias;
	@Column(name="year_introduced")
	private int yearIntroduced;
	private String affiliation;
	private String nemesis;
	private String location;
	private String powers;
	
	public Superhero() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public int getYearIntroduced() {
		return yearIntroduced;
	}

	public void setYearIntroduced(int yearIntroduced) {
		this.yearIntroduced = yearIntroduced;
	}

	public String getAffiliation() {
		return affiliation;
	}

	public void setAffiliation(String affiliation) {
		this.affiliation = affiliation;
	}

	public String getNemesis() {
		return nemesis;
	}

	public void setNemesis(String nemesis) {
		this.nemesis = nemesis;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPowers() {
		return powers;
	}

	public void setPowers(String powers) {
		this.powers = powers;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Superhero [id=").append(id).append(", name=").append(name).append(", alias=").append(alias)
				.append(", yearIntroduced=").append(yearIntroduced).append(", affiliation=").append(affiliation)
				.append(", nemesis=").append(nemesis).append(", location=").append(location).append(", powers=")
				.append(powers).append("]");
		return builder.toString();
	}



}
