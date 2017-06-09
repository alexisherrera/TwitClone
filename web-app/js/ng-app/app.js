//create the login module
var loginApp = angular.module('twitcloneloginapp', ["ngRoute"]);

//create the controller for the login page
loginApp.controller('LoginController', function LoginController($scope) {
  $scope.message = "wassssup"

  //function to deal with logging a user in
  function login() {

  }

  //function to deal with registering a user
  function register() {

  }
});

//controller for registering a user
loginApp.controller('RegisterController', function RegisterController($scope) {

});

loginApp.config(function($routeProvider) {
  $routeProvider
  .when("/register", {
     template : "<h1>Banana</h1><p>Bananas contain around 75% water.</p>"
  })
  .when("/red", {
     templateUrl : "red.htm"
  })
  .when("/green", {
    templateUrl :  "green.htm"
  })
  .when("/blue", {
    templateUrl : "blue.htm"
   });
});
