'use strict';

/**
 * @ngdoc service
 * @name phonebookApp.listings
 * @description
 * # listings
 * Factory in the phonebookApp.
 */
angular.module('phonebookApp')
  .factory('listings', function ($resource) {
    return $resource('/listings/:id.json',{id:'@id'}, {
      'update': { method:'PUT' }
    });
  });
