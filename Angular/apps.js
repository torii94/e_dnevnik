var app=angular.module('app', ['ngRoute']);


app.controller('ctrlParent',function($scope, $http, id){ 


	$http({
    method : "GET",
    url : "json/pregledaj_predmet_ocjene.php?id=" + id
  }).then(function mySucces(response) {
      $scope.ocjena = response.data;
    }, function myError(response) {
      $scope.ocjena = response.statusText;
  });

  $http({
    method : "GET",
    url : "json/ime_prezime_ocjena.php?id=" + id
  }).then(function mySucces(response) {
      $scope.predmet = response.data
    }, function myError(response) {
      $scope.predmet = response.statusText;
  });

      $scope.getNumber = function(num) {
        return new Array(num);   
    }
    $scope.state = { selected: undefined };
});


