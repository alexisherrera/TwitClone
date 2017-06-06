<!DOCTYPE html>
<html ng-app="twitcloneloginapp">
	<head>
		<title>Welcome to Twitclone</title>
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular-route.js"></script>
		<g:javascript src="app/app.js" />
		<r:layoutResources />
	</head>
	<body>
		<div ng-controller = 'LoginController'>
			<div class="col-md-6 col-md-offset-3">
    	<h2>Login</h2>
  		<form novalidate class="simple-form">
		    <label>Username: <input type="text" ng-model="user.name" /></label><br />
		    <label>Password: <input type="text" ng-model="user.password" /></label><br />
		    <input type="submit" ng-click="login(user)" value="login" />
  	</form>
		<a href ="/register">I do not not have an account</a>
		</div>
		<div>{{message}}</div>
		<div>{{user.password}}</div>
	</div>

	</body>
</html>
