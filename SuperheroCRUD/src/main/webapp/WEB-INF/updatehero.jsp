<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="makeUpdates.do">
	<input type="hidden" name="id" value="${hero.id}">
	<label for="name">Name</label><br>
	<input type="text" name="name" value="${hero.name} "><br>
	<label for="alias">Alias</label><br>
	<input type="text" name="alias" value="${hero.alias}"><br>
	<label for="yearIntroduced">Year Introduced</label><br>
	<input type="number" name="yearIntroduced" value="${hero.yearIntroduced}"><br>
	<label for="affiliation">Affiliation</label><br>
	<input type="text" name="affiliation" value="${hero.affiliation}"><br>
	<label for="nemesis">Nemesis</label><br>
	<input type="text" name="nemesis" value="${hero.nemesis}"><br>
	<label for="location">Location</label><br>
	<input type="text" name="location" value="${hero.location}"><br>
	<label for="powers">Powers</label><br>
	<input type="text" name="powers" value="${hero.powers}">
	<input type="submit">
	</form>
	
</body>
</html>