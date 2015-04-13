(function() {
	'use strict';

	angular
		.module('tornano.users')
		.factory('Auth', auth);

	auth.$inject = [
		'$http',
		'$window',
		'Session',
		'User'
	];

	function auth($http, $window, Session, User) {
		var auth = {};

		auth.login = function(credentials) {
			return $http.post('/session/login', credentials)
				.then(function(res) {
					Session.create(res.data._id).then(
						function() {
							$window.location.href = '/home';
						});
					//console.log(res.data, Session);
					return res.data;
				});
		};

		auth.isAuthenticated = function() {
			return !!Session.userId;
		};

		auth.createUser = function(user) {
			return User.save(user).$promise;
		}

		auth.logout = function() {
			Session.destroy();
			return this;
		}

		return auth;

	}
})();