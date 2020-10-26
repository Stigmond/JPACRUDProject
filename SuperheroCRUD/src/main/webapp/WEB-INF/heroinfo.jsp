<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta charset="UTF-8">
<title>${hero.name}</title>
</head>
<body>
<div class="container-fluid">
<c:choose>
<c:when test="${empty hero }">
<h3>No Superhero Found!</h3>
</c:when>
<c:otherwise>
<table>
<tr><td>Superhero Name:</td><td>${hero.name}</td></tr>
<tr><td>Superhero Alias:</td><td>${hero.alias}</td></tr>
<tr><td>Year Introduced:</td><td>${hero.yearIntroduced}</td></tr>
<tr><td>Team Affiliation(s):</td><td>${hero.affiliation}</td></tr>
<tr><td>Archnemesis:</td><td>${hero.nemesis}</td></tr>
<tr><td>Located:</td><td>${hero.location}</td></tr>
<tr><td>Description of Power(s):</td><td>${hero.powers}</td></tr>
<tr>
</table>
<table>
<tr>
<td>
<form action="deleteHero.do">
<button type="submit" name="id" value="${hero.id}">Delete</button>
</form>
</td>
<td>
<form action="updateHero.do">
<button type="submit" name="id" value="${hero.id}">Update</button>
</form>
</td>
<tr>
</table>
</c:otherwise>
</c:choose>

<a href="/">Return to Main</a>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</html>
