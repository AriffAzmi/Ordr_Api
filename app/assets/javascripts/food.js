console.log("hello from food.js!");

alert('hello');

var app = angular.module('myApp', []);
app.controller('FoodController', function($scope){
  $scope.name = 'bar';
});