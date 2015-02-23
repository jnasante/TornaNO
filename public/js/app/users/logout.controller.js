(function() {
	'use strict';

	angular
		.module('vault.users')
		.controller('logoutController', LogoutController);

	LogoutController.$inject = [
		'$scope',
		'$rootScope',
		'$window',
		'AuthEvents',
		'Auth'
	];

	function LogoutController($scope, $rootScope, $window, AuthEvents, Auth) {
		$scope.logout = function() {
			Auth.logout();
			$rootScope.$broadcast(AuthEvents.logoutSuccess);
			$window.location.href = '/login';
		};

		$scope.logout();
	}
})();