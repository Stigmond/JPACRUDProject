<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${hero.name}</title>
</head>
<body>
<c:choose>
<c:when test="${empty hero }">
<div><h3>No Superhero Found!</h3></div>
</c:when>
<c:otherwise>
<div>Superhero Name: ${hero.name}</div>
<div>Superhero Alias: ${hero.alias}</div>
<div>Year Introduced: ${hero.yearIntroduced}</div>
<div>Team Affiliation: ${hero.affiliation}</div>
<div>Archnemesis: ${hero.nemesis}</div>
<div>Located: ${hero.location}</div>
<div>Description of Power(s): ${hero.powers}</div>
<form action="deleteHero.do">
<button type="submit" name="id" value="${hero.id}">Delete</button>

</form>
<form action="updateHero.do">
<button type="submit" name="id" value="${hero.id}">Update</button>
</form>
</c:otherwise>
</c:choose>

<a href="/">Return to Main</a>
</body>
</html>
