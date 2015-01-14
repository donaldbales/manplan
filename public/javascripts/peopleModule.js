var peopleNs = angular.module('peopleNs', []);

peopleNs.controller('peopleController', ['$scope', '$http', function peopleController($scope, $http){
	$http.get('people.json').success(function(data) {
		$scope.people = data;
	});
}]);