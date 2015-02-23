(function() {
	'use strict';

	angular
		.module('vault.users')
		.controller('signupController', signupController);

	signupController.$inject = [
		'$scope',
		'$rootScope',
		'$window',
		'Auth',
		'$timeout'
	];

	function signupController($scope, $rootScope, $window, Auth, $timeout) {
		$scope.email = '';
		$scope.password = '';
		$scope.name = '';
		$scope.msg = '';

		$scope.user = {
			email: '',
			password: '',
			name: '',
			files: {}
		};
		
		$scope.createUser = function() {
			var user = {
				email: $scope.email,
				password: $scope.password,
				accessLevel: 0 //TODO Figure out access
				//name: $scope.name
			};

			Auth.createUser(user).then(
				function() {
					Auth.login(user);
					
				});

				//
		}
	}
})();	