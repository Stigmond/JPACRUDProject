<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cerebro Hero Database</title>
</head>
<body>
	<h1>Welcome to Cerebro</h1>

	<form action="getHero.do" method="GET">
		Hero ID# <input type="text" name="id" /> <input type="submit"
			value="Show Superhero" />
	</form>
	<hr>
	<form action="addHero.do">
	<label for="name">Name</label><br>
	<input type="text" name="name"><br>
	<label for="alias">Alias</label><br>
	<input type="text" name="alias"><br>
	<label for="yearIntroduced">Year Introduced</label><br>
	<input type="text" name="yearIntroduced"><br>
	<label for="affiliation">Affiliation</label><br>
	<input type="text" name="affiliation"><br>
	<label for="nemesis">Nemesis</label><br>
	<input type="text" name="nemesis"><br>
	<label for="location">Location</label><br>
	<input type="text" name="location"><br>
	<label for="powers">Powers</label><br>
	<input type="text" name="powers">
	<input type="submit">
	</form>
	<table>
		<thead>
			<tr>
				<th>ID #</th>
				<th>Superhero</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="hero" items="${heroes}">
			<tr>
			<td>${hero.id}</td>
			<td>${hero.name}</td>
			<td><button>More Info</button> <button>Edit</button><td>
			<tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>