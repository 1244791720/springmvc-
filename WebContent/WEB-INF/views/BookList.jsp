<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	
</style>
<title>Book list</title>
</head>
<body>
  <div id="global">
	  <h1>Book List</h1>
	  <a href="input-book">Add Book</a>
	  <table border="0" cellpadding="10">
	  	<tr>
	  		<th>Category</th>
	  		<th>Title</th>
	  		<th>IsBn</th>
	  		<th>Author</th>
	  		<th>Price</th>
	  		<th>&nbsp;</th>
	  	</tr>
	  	<c:forEach items="${books}" var="book">
			<tr>
				<td>${book.category.name}</td>
				<td>${book.title}</td>
				<td>${book.isbn}</td>
				<td>${book.author}</td>
				<td>${book.price}</td>
				<td><a href="edit-book/${book.id}">Edit</a></td>
			</tr>  	
	  	</c:forEach>
	  </table>
  </div>
</body>
</html>