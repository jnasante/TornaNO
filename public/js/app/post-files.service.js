(function() {
  	"use strict";

  	angular
  		.module('vault')
  		.factory('PostFiles', PostFiles);

  	PostFiles.$inject = ['$resource'];

  	function PostFiles($resource) {
		return $resource('/files/:id', {id: '@_id'});
	}

})();