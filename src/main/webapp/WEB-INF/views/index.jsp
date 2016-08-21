<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html data-ng-app="myApp">
<head>
<title>Index</title>
<script type="text/javascript"
	src="http://code.angularjs.org/1.2.25/angular.min.js"></script>
<script type="text/javascript" src="js/modules/promise-tracker.js"></script>
<script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
</head>
<body class="container">
	<h1>Leave Management System</h1>

	<P>The time on the server is ${serverTime}.</P>
	<P>Login required to continue..</P>
	<div class="form-group">
		<form action="login" method="get">
			<label for="name">Name </label> <span class="label label-danger"
				data-ng-show="submitted && helpForm.name.$error.required">Required!</span>
			<input type="text" name="name" data-ng-model="name"
				class="form-control" required /><br /> <label for="mid">Employee
				Id </label> <span class="label label-danger"
				data-ng-show="submitted && helpForm.name.$error.required">Required!</span>
			<input type="text" name="mid" data-ng-model="mid"
				class="form-control" required /><br />



			<button data-ng-disabled="progress.active()"
				data-ng-click="submit(helpForm)" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>
