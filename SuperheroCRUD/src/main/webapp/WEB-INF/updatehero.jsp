<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
<form action="makeUpdates.do">
	<input type="hidden" name="id" value="${hero.id}" required>
	<label for="name">Name</label><br>
	<input type="text" name="name" value="${hero.name} "><br>
	<label for="alias">Alias</label><br>
	<input type="text" name="alias" value="${hero.alias}"><br>
	<label for="yearIntroduced">Year Introduced</label><br>
	<input type="number" name="yearIntroduced" value="${hero.yearIntroduced}" min="1900" required><br>
	<label for="affiliation">Affiliation(s)</label><br>
	<input type="text" name="affiliation" value="${hero.affiliation}"><br>
	<label for="nemesis">Nemesis</label><br>
	<input type="text" name="nemesis" value="${hero.nemesis}"><br>
	<label for="location">Location</label><br>
	<input type="text" name="location" value="${hero.location}"><br>
	<label for="powers">Powers</label><br>
	<input type="text" name="powers" value="${hero.powers}">
	<input type="submit">
	</form>
<a href="/">Return to Main</a>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</html>