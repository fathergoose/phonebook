'use strict';

/**
 * @ngdoc service
 * @name phonebookApp.listings
 * @description
 * # listings
 * Factory in the phonebookApp.
 */
angular.module('phonebookApp')
  .factory('listings', function () {
    // Service logic
    // ...

    var meaningOfLife = 42;

    // Public API here
    return {
      someMethod: function () {
        return meaningOfLife;
      }
    };
  });
