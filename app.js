var angularApp = angular.module('angularApp', []);

angularApp.controller('mainController', function ($scope) {
    $scope.persons=[
		{
			name: "Toni",
			age: '23',
			city: "Split"
		},
		{
			name: "Tony",
			age: '22',
			city: "New York"
		},
		{
			name: "Tamara",
			age: '28',
			city: "London"
		},
	];
});

