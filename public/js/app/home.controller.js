
(function() {
  "use strict";

  angular
    .module('vault')
    .controller('homeController', HomeController);

  HomeController.$inject = ['$scope', 'PostProjects'];

  function HomeController($scope, PostProjects) {
  	//dummy data until projects are implemented
  	$scope.projects = [{name: "Project A"},{name: "Project B"}];

  	$scope.refresh = function(){
    	//$scope.projects = PostProjects.query();
    };

	$scope.updateName = function(newProjectName){
    	if(newProjectName != undefined && newProjectName.length != 0){
        	$('#createButton').removeClass('disabled');
        } else {
        	$('#createButton').addClass('disabled');
        }
    };

    $scope.createProject = function(newProjectName){
    	$scope.projects.push({name: newProjectName});
    	$scope.refresh();
    };
    $scope.refresh();
  };

})();