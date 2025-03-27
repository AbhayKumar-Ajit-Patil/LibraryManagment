<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add book page</title>
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
	background: #add8e6;
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

input[type="text"],
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
	background-color: #ff0000;
	color: white;
	border: none;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	background-color: #ffa500;
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
	<div class="form-container">
		<h2>Book Details</h2>
		<form action="./add-book" method="post">
			<table>
				<tr>
					<td>Title</td>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<td>Author</td>
					<td><input type="text" name="author"></td>
				</tr>
				
				<tr>
					<td>Genre</td>
					<td><input type="text" name="genre"></td>
				</tr>
				
				  
				<tr>
					<td>Availability</td>
					<td><input type="text" name="availability"></td>
				</tr>
				
			</table>
			<div>
				<input type="submit" value="ADD">
			</div>
		</form>
	</div>
</body>
</html> 