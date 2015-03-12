directive = ($parse) ->
  return {
    restrict: 'E',
    transclude: true,
    templateUrl: 'terebinth.split_dropdown.html',
  }

directive.$inject = ['$parse']
angular.module('terebinth.bootstrapSplitDropdown').directive('terebinthSplitDropdown', directive)
