
(function () {
  "use strict";

  angular
    .module('tornano.users')
    .config(UsersRoutes);

  UsersRoutes.$inject = [
    '$stateProvider', 
    '$urlRouterProvider', 
    '$locationProvider'
  ];

  function UsersRoutes($stateProvider, $urlRouterProvider, $locationProvider) {

    $stateProvider
      .state('login', {
        url: '/login',
        controller: 'loginController',
        templateUrl: 'partials/users/login.html',
        data: {
          requireLogin: false
        }
      })
      .state('signup', {
        url: '/signup',
        controller: 'signupController',
        templateUrl: 'partials/users/signup.html',
        data: {
          requireLogin: false
        }
      })
      .state('logout', {
        url: '/logout',
        controller: 'logoutController',
        templateUrl: 'partials/users/logout.html',
        data: {
          requireLogin: true
        }
      });

  }

})();