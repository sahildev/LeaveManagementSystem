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
	<h2>Leave History</h2>
	<table border="0">
		<tr>
			<th>Employee Id</th>
			<th>From Date</th>
			<th>To Date</th>
			<th>Reason</th>
			<th>Permission</th>
			<th>Cancel</th>
		</tr>
		<%
			List<Leaves> data = (List) request.getAttribute("leave");
			request.setAttribute("data", data);
			//data now contains a leave object which can be accessed as a list
			//out.println(data);
			for (Leaves l : data) {
		%>
		<tr>
			<form action="cancelLeave" method="get">
			<td><input id="1" name="1" type="text" size="15"
				value="<%out.println(l.getEmpId());%>" readonly="readonly" /></td>
			<td><input id="2" name="2" type="text" size="15"
				value="<%out.println(l.getFromdate());%>" readonly="readonly" /></td>
			<td><input id="3" name="3" type="text" size="15"
				value="<%out.println(l.getToDate());%>" readonly="readonly"/></td>
			<td><input id="4" name="4" type="text" size="15"
				value="<%out.println(l.getReason());%>" readonly="readonly" /></td>
			<td><input id="5" name="5" type="text" size="15"
				value="<%out.println(l.getPermission());%>" readonly="readonly"/></td>
			<td><input type="submit" value="Cancel"/></td>
				</form>
		</tr>
		

		<%
			}
		%>
	</table>
</body>
</html>