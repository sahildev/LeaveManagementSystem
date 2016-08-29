<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="http://code.angularjs.org/1.2.25/angular.min.js"></script>
<script type="text/javascript" src="js/modules/promise-tracker.js"></script>
<script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<title>Admin Add User</title>
</head>
<body>
<body class="container">

	<h2>Add User</h2>
	<br />


	<div class="form-group">
		<form action="adminAddUser" method="get">
				
				
				<label for="empid">Enter
				Employee Name:</label> <span class="label label-danger"
				data-ng-show="submitted && helpForm.name.$error.required">Required!</span>
			<input type="text" name="empname" data-ng-model="empname"
				class="form-control" required /><br /> 
				
				<label for="todate">Enter
				Manager Id:</label> <span class="label label-danger"
				data-ng-show="submitted && helpForm.name.$error.required">Required!</span>
			<input type="text" name="managerid" data-ng-model="managerid"
				class="form-control" required /><br /> 
				
				<label for="todate">Enter
				password:</label> <span class="label label-danger"
				data-ng-show="submitted && helpForm.name.$error.required">Required!</span>
			<input type="text" name="password" data-ng-model="password"
				class="form-control" required /><br />
				
				<input type="hidden" name="status" id="status" value="allowed" />
				
				<button data-ng-disabled="progress.active()"
				data-ng-click="submit(helpForm)" class="btn btn-default">Submit</button>
		</form>
	</div>

</body>
</html>