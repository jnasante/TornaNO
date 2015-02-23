(function() {
"use strict";

  	angular
  		.module('vault.users')
  		.factory('User', user);

  	user.$inject = ['$resource'];

  	function user($resource) {
		return $resource('/users/:id', {id: '@_id'});
	}

})();