(function() {
	'use strict';

	angular
		.module('tornano.users')
		.controller('loginController', LoginController);

	LoginController.$inject = [
		'$scope',
		'$rootScope',
		'$window',
		'AuthEvents',
		'Auth'
	];

	function LoginController($scope, $rootScope, $window, AuthEvents, Auth) {
		$scope.email = '';
		$scope.password = '';
		$scope.login = function() {
			var credentials = {
				email: $scope.email,
				password: $scope.password
			}
			//console.log(credentials);
			Auth.login(credentials)
				.then(function(user) {
					$rootScope.$broadcast(AuthEvents.loginSuccess);
					$scope.setCurrentUser(user);
					//console.log(user);
					$window.location.href = '/home';
				},
				function() {
					$rootScope.$broadcast(AuthEvents.loginFailed);
				});
		}
	}
})();