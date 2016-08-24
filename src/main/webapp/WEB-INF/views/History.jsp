<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.sql.*" import="java.util.*" import="com.proj.myapp.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LeaveHistory</title>
<style>
table, th, td {
	border: 1px solid grey;
	border-collapse: collapse;
	padding: 5px;
}

table tr:nth-child(odd) {
	background-color: #f2f2f2;
}

table tr:nth-child(even) {
	background-color: #ffffff;
}
</style>
</head>
<body>
	<h2>Admin home</h2>

<%
			//out.println(request.getAttribute("leave"));
Iterator<String> itrs;
int i;
List data = (List)request.getAttribute("leave");
request.setAttribute("data", data);
out.println(data);

/* for (i = 0; i < 2; i++) {
	Leaves l = (Leaves) data.get(i);
	out.println(l.getFromdate()); */

		%>

</body>
</html>