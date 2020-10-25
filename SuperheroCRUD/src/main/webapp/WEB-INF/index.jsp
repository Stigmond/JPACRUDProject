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

	<form action="getHero.do">
		Hero ID# <input type="text" name="id"/> <input type="submit"
			value="Show Superhero"/>
	</form>
	<br>
	<form action="gotoaddpage.do">
		<input type="submit" value="Add Superhero"/>
	</form>
	<hr>
	
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
			<td><a href="getHero.do?id=${hero.id}">${hero.name}</a></td>
			<tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>