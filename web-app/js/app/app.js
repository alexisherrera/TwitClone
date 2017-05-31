//create the login module
var loginApp = angular.module('twitcloneloginapp', []);

//create the controller for the login page
loginApp.controller('LoginController', function LoginController($scope) {
  $scope.message = "wassssup"
});

//controller for registering a user
loginApp.controller
