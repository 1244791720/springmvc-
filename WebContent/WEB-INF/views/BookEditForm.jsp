<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Book Form</title>
</head>
<body>
	<div>
		<c:url var="formAction" value="/update-book"></c:url>
		<form:form action="${formAction}" method="post" modelAttribute="book">
			<fieldset>
				<legend>Edit a book</legend>
				<form:hidden path="id"></form:hidden>
				<p>
					<label for="category">Category:</label>
					<form:select path="category.id" id="category" items="${categories}"
						itemLabel="name" itemValue="id"></form:select>
				</p>

				<p>
					<label for="title">Title:</label>
					<form:input path="title" id="title" />
				</p>

				<p>
					<label for="author">author:</label>
					<form:input path="author" id="author" />
				</p>

				<p>
					<label for="isbn">isbn:</label>
					<form:input path="isbn" id="isbn" />
				</p>
				
		
				price: <input type="text" name="price">


				<p id="buttons">
					<input id="reset" type="reset" tabindex="4"> <input
						id="submit" type="submit" tabindex="5" value="update book">
				</p>


			</fieldset>
		</form:form>
	</div>
</body>
</html>