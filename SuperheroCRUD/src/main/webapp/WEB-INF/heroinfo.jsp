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
<div class="container-fluid">
<c:choose>
<c:when test="${empty hero }">
<h3>No Superhero Found!</h3>
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
</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</html>
