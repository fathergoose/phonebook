'use strict';

/**
 * @ngdoc function
 * @name phonebookApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the phonebookApp
 */
angular.module('phonebookApp')
  .controller('MainCtrl', ['$scope', 'listings', function ($scope, listings) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
    $scope.listings = listings.query();

    $scope.add = function(frmLstObj) {
      var listing = new listings();
      listing.firstName = frmLstObj.firstName;
      listing.lastName = frmLstObj.lastName;
      listing.phoneNumber = frmLstObj.phoneNumber;
      console.log(listing);
      listing.$save(function(){
        $scope.listings = listings.query();
        $scope.listing = null;
        $scope.contactForm.$setPristine(true);
      });
    }
        


  }]);
