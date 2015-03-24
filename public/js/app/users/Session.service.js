(function() {
	'use strict';

	angular
		.module('tornano.users')
		.service('Session', session);

	session.$inject = ['User'];

	function session(User) {
		this.create = function(userId) {
			//this.id = sessionId;
			this.userId = userId;
			var user = User.get({id: userId}, function() {
				sessionStorage.user = angular.toJson(user);
			});
			return user.$promise;
			//sessionStorage.user = '';
		};
		this.destroy = function() {
			//this.id = null;
			this.userId = null;
			delete sessionStorage.user;
		};
		return this;
	}
})();