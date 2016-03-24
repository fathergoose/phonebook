'use strict';

/**
 * @ngdoc function
 * @name phonebookApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the phonebookApp
 */
angular.module('phonebookApp')
  .controller('MainCtrl', ['listings', function (listings) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
    this.listings = listings.query();
  }]);
