<%@page import="com.abhi.librarymanagement.dto.LibraryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Book page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	background: #ffffff;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	padding: 20px 30px;
	width: 400px;
}

.form-container h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #333333;
}

table {
	width: 100%;
	border-spacing: 10px;
}

td {
	color: #555555;
	font-size: 14px;
	vertical-align: middle;
}

input[type="text"], input[type="number"], 
	input[type="submit"] {
	width: 100%;
	padding: 8px;
	border: 1px solid #cccccc;
	border-radius: 4px;
	font-size: 14px;
	margin-top: 5px;
	box-sizing: border-box;
}

input[type="radio"] {
	width: auto;
}

label {
	margin-left: 5px;
	font-size: 14px;
	vertical-align: middle;
}

input[type="submit"] {
	background-color: #007BFF;
	color: white;
	border: none;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}

tr td:first-child {
	width: 30%;
	font-weight: bold;
	vertical-align: middle;
}

tr td:last-child {
	width: 70%;
}

.form-container div {
	text-align: center;
	margin-top: 20px;
}
</style>
</head>
<body>
	<%
	LibraryDTO book = (LibraryDTO) request.getAttribute("book");
	%>
	<div class="form-container">
		<h2>book Details</h2>
		<form action="./update-book" method="post">
			<table>
				<tr>
					<td>Id</td>
					<td><input type="text" name="id" value="<%=book.getId()%>"
						readonly="readonly"></td>
				</tr>
				<tr>
					<td>Title</td>
					<td><input type="text" name="title"
						value="<%=book.getTitle()%>"></td>
				</tr>
				<tr>
					<td>Author</td>
					<td><input type="text" name="author"
						value="<%=book.getAuthor()%>"></td>
				</tr>
				<tr>
					<td>Genre</td>
					<td><input type="text" name="genre"
						value="<%=book.getGenre()%>"></td>
				</tr>
				<tr>
					<td>Availability</td>
					<td><input type="text" name="availability"
						value="<%=book.getAvailability()%>"></td>
				</tr>
				
					
			</table>
			<div>
				<input type="submit" value="UPDATE">
			</div>
		</form>
	</div>
</body>
</html>
