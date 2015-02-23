(function() {
  "use strict";

  angular
    .module('vault')
    .config(VaultRoutes);

  VaultRoutes.$inject = [
    '$stateProvider', 
    '$urlRouterProvider', 
    '$locationProvider',
  ];

  function VaultRoutes($stateProvider, $urlRouterProvider, $locationProvider) {

    $stateProvider
      .state('index', {
        url: '/',
        controller: 'homeController',
        templateUrl: 'partials/home.html',
        data: {
          isIndex:true,
          requireLogin: true
        }
      })
      .state('home', {
        url: '/home',
        controller: 'homeController',
        templateUrl: 'partials/home.html',
        data : {
          requireLogin: true
        }
      })
      .state('home.documents', {
        url: '/documents',
        controller: 'documentsController',
        templateUrl: 'partials/documents.html',
        data: {
          requireLogin: true
        }
      });

    $locationProvider.html5Mode(true);

  }

})();