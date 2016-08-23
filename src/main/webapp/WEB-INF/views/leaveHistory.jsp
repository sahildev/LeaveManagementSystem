<!--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LeaveHistory</title>
</head>
<body>

</body>
</html>
-->

<!DOCTYPE html>
<html lang="en" data-ng-app="myApp">
<head>
<title>Add User</title>
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
	<%%>



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



<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
   <head>
      <title>Employee Home</title>
      <script src = "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
      
      <style>
         table, th , td {
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
      
      <h2>Employee Home</h2>
      <div ng-app = "mainApp" ng-controller = "leavesController">
         
         <form name = "leavesForm"  method="get">
            <table border = "0">
               <tr>
                  <td>Enter Employee Id:</td>
                  <td><input name = "empid" type = "text" ng-model = "empid" required>
                     <span style = "color:red" ng-show = "leavesForm.empid.$dirty && leavesForm.empid.$invalid">
                        <span ng-show = "leavesForm.empid.$error.required">Employee Id is required.</span>
                     </span>
                  </td>
               </tr>
               
               <tr>
                  <td>Enter From Date: </td>
                  <td><input name = "fromdate"  type = "text" ng-model = "fromdate" required>
                     <span style = "color:red" ng-show = "leavesForm.fromdate.$dirty && leavesForm.fromdate.$invalid">
                        <span ng-show = "leavesForm.fromdate.$error.required">From Date is required.</span>
                     </span>
                  </td>
               </tr>
               
               <tr>
                  <td>Enter To Date: </td>
                  <td><input name = "todate" type = "text" ng-model = "todate" length = "100" required>
                     <span style = "color:red" ng-show = "leavesForm.todate.$dirty && leavesForm.todate.$invalid">
                        <span ng-show = "leavesForm.todate.$error.required">To Date required.</span>
                     </span>
                  </td>
               </tr>
               
               <tr>
                  <td>
                     <button ng-click = "reset()">Reset</button>
                  </td>
                  <td>
                  <input type="submit"/>
                     <!-- <button ng-disabled = "leavesForm.empid.$dirty &&
                        leavesForm.empid.$invalid || leavesForm.fromdate.$dirty &&
                        leavesForm.fromdate.$invalid || leavesForm.todate.$dirty &&
                        leavesForm.todate.$invalid" ng-click="submit()">Submit</button> -->
                  </td>
               </tr>
					
            </table>
         </form>
      </div>
      
      <script>
         var mainApp = angular.module("mainApp", []);
         
         mainApp.controller('leavesController', function($scope) {
            $scope.reset = function(){
               $scope.empid = "";
               $scope.fromdate = "";
               $scope.todate = "";
            }
            
            $scope.reset();
         });
      </script>
      
      
      
      
      
      
      
      <h2>Reset Password</h2>
      <div ng-app = "resetpass" ng-controller = "resetController">
         
         <form name = "resetForm" novalidate>
            <table border = "0">
               <tr>
                  <td>Enter Employee Id:</td>
                  <td><input name = "empid" type = "text" ng-model = "empid" required>
                     <span style = "color:red" ng-show = "resetForm.empid.$dirty && resetForm.empid.$invalid">
                        <span ng-show = "resetForm.empid.$error.required">Employee Id is required.</span>
                     </span>
                  </td>
               </tr>
               
               <tr>
                  <td>Enter new password </td>
                  <td><input name = "password"  type = "password" ng-model = "password" required>
                     <span style = "color:red" ng-show = "resetForm.password.$dirty && resetForm.password.$invalid">
                        <span ng-show = "resetForm.password.$error.required">new password is required.</span>
                     </span>
                  </td>
               </tr>
               
             
               
               <tr>
                  <td>
                     <button ng-click = "reset()">Reset</button>
                  </td>
                  <td>
                     <button ng-disabled = "resetForm.empid.$dirty &&
                        resetForm.empid.$invalid || resetForm.password.$dirty &&
                        resetForm.password.$invalid ng-click="submit()">Submit</button>
                  </td>
               </tr>
					
            </table>
         </form>
      </div>
       <script>
         var resetpass = angular.module("resetpass", []);
         
         resetpass.controller('resetController', function($scope) {
            $scope.reset = function(){
               $scope.empid = "";
               $scope.password = "";
            }
            
            $scope.reset();
         });
      </script>
      
      
     
        <h2>List of leaves Taken</h2>
         <div>
         
         
            <table border = "0">
               <tr>
                 <th>LeaveId</th>
                 <th>From Date</th>
                 <th>To Date</th>
                 <th>Reason</th>
                 <th>Status</th>
                 <th>Action</th>
               </tr>
               
               <tr>
                 
               </tr>
               
             
               
               <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                     <button  ng-click="submit()">Cancel</button>
                  </td>
               </tr>
					
            </table>

      </div>
        
        
   </body>
</html> --%>