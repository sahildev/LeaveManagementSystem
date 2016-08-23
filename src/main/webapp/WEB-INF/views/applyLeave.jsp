<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html data-ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>applyLeave</title>
<script type="text/javascript"
	src="http://code.angularjs.org/1.2.25/angular.min.js"></script>
<script type="text/javascript" src="js/modules/promise-tracker.js"></script>
<script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
</head>
<body class="container">

	<h2>Apply For Leaves</h2>
	<br />


	<div class="form-group">
<form action="leavesForm" method="get">
		<label for="empid">Enter Employee Id:</label> <span class="label label-danger"
			data-ng-show="submitted && helpForm.name.$error.required">Required!</span>
		<input type="text" name="empid" data-ng-model="empid"
			class="form-control" required /><br/>
	
		<label for="fromdate">Enter From Date: </label> <span class="label label-danger"
			data-ng-show="submitted && helpForm.name.$error.required">Required!</span>
		<input type="text" name="fromdate" data-ng-model="fromdate"
			class="form-control" required /><br/>

	<label for="todate">Enter to Date: </label> <span class="label label-danger"
			data-ng-show="submitted && helpForm.name.$error.required">Required!</span>
		<input type="text" name="todate" data-ng-model="todate"
			class="form-control" required /><br/>
	

	<button data-ng-disabled="progress.active()"
		data-ng-click="submit(helpForm)" class="btn btn-default">Submit</button>
	</form>
	</div>

</body>
</html>