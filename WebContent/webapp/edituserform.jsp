<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Servlet, JSP and JDBC CRUD Operations</title>

<style type="text/css">
body {
	text-align: center;
}

table {
	margin-left: 15%;
	min-width: 70%;
	border: 1px solid #CCC;
	border-collapse: collapse;
}

table tr {
	line-height: 30px;
}

table tr th {
	background: #000033;
	color: #FFF;
}

table tr td {
	border: 1px solid #CCC;
	margin: 5px;
}

input[type=text], input[type=email], input[type=tel] {
	min-width: 60%;
}

input[type=submit], a {
	background: green;
	padding: 5px;
	margin: 5px;
	color: #FFF;
}

a {
	text-decoration: none;
}
</style>
</head>

<body>
	<h1>Servlet, JSP and JDBC CRUD Operations</h1>
	
	<form action="<c:url value="/customer/update"/>" method="post">
		<table>

			<tr>
				<td>First Name:</td>
				<td><input type="text" name="firstName"
					value="${customer.firstName}" required></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="lastName"
					value="${customer.lastName}" required></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="${customer.email}"
					required></td>
			</tr>
			<tr>
				<td>Mobile:</td>
				<td><input type="tel" pattern="[789][0-9]{9}" name="mobile"
					value="${customer.mobile}" required></td>
			</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Update"></td>
				</tr>

		</table>
	</form>

</body>
</html>
