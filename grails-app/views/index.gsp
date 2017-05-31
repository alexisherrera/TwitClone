<!DOCTYPE html>
<html ng-app="twitcloneloginapp">
	<head>
		<title>Welcome to Twitclone</title>
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
		<g:javascript src="app/app.js"/>
	</head>
	<body>
		<div ng-controller = 'LoginController'>
			<div class="col-md-6 col-md-offset-3">
    <h2>Login</h2>
		<div ng-controller="ExampleController">
  <form novalidate class="simple-form">
    <label>Username: <input type="text" ng-model="user.name" /></label><br />
    <label>E-mail: <input type="email" ng-model="user.email" /></label><br />
    Best Editor: <label><input type="radio" ng-model="user.preference" value="vi" />vi</label>
    <label><input type="radio" ng-model="user.preference" value="emacs" />emacs</label><br />
    <input type="button" ng-click="reset()" value="Reset" />
    <input type="submit" ng-click="update(user)" value="Save" />
  </form>
  <pre>user = {{user | json}}</pre>
  <pre>master = {{master | json}}</pre>
</div>
</div>


		</div>
	</body>
</html>
