(function() {
  "use strict";

  angular
    .module('vault')
    .controller('documentsController', DocumentsController);

  DocumentsController.$inject = ['$scope', '$upload', 'PostFiles', '$http', '$rootScope'];

  function DocumentsController($scope, $upload, PostFiles, $http, $rootScope) {

    $scope.showDetails = true;

    $scope.fileSelected = function (fileId)
    {
        //$rootScope.$broadcast('file:selected', fileId);
        $scope.showDetails = false;
        $scope.file = PostFiles.get(null, {_id : fileId});
    }

    $scope.refresh = function() 
    {
    	$scope.allFiles = PostFiles.query();
    };
	
  	$scope.$watch('files', function () {
        $scope.upload($scope.files);
    });

    $scope.upload = function (files) {
        if (files && files.length) {
        	var fd = new FormData();
            for (var i = 0; i < files.length; i++) {
                var file = files[i];
                fd.append("file" + i, file);
            }
            
        	$http.post('/files', fd, {
        		withCredentials: true,
        		headers: {'Content-Type': undefined },
        		transformRequest: angular.identity
    		}).success($scope.refresh);
        }
    };

    $scope.delete = function (postId) 
    {
    	if ($scope.allFiles.length > 0)
    	{
    		PostFiles.remove({id: postId}, null, $scope.refresh);
    	}
    }

    $scope.refresh();
  }

})();