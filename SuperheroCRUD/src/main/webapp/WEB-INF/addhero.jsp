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
	<input type="text" name="name" value="unknown" required><br>
	<label for="alias">Alias</label><br>
	<input type="text" name="alias" value="unknown"><br>
	<label for="yearIntroduced">Year Introduced</label><br>
	<input type="number" name="yearIntroduced" min="1900" value="1900" required><br>
	<label for="affiliation">Affiliation</label><br>
	<input type="text" name="affiliation" value="unknown"><br>
	<label for="nemesis">Nemesis</label><br>
	<input type="text" name="nemesis" value="unknown"><br>
	<label for="location">Location</label><br>
	<input type="text" name="location" value="unknown"><br>
	<label for="powers">Powers</label><br>
	<input type="text" name="powers" value="undetermined">
	<input type="submit">
	</form>
	<a href="/">Return to Main</a>
</body>
</html>