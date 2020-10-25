<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Hero</title>
</head>
<body>
<h3>Add a Superhero</h3>
<form action="addHero.do">
	<label for="name">Name</label><br>
	<input type="text" name="name"><br>
	<label for="alias">Alias</label><br>
	<input type="text" name="alias"><br>
	<label for="yearIntroduced">Year Introduced</label><br>
	<input type="number" name="yearIntroduced"><br>
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
</body>
</html>