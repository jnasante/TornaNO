(function() {
  	"use strict";

  	angular
  		.module('vault')
  		.factory('PostProjects', PostProjects);

  	PostProjects.$inject = ['$resource'];

  	function PostProjects($resource) {
		return $resource('/projects/:pid', {pid: '@_pid'});
	}

})();