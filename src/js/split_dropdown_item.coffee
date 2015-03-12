directive = ->
  return {
    restrict: 'E',
    require: '^terebinthSplitDropdown',
    replace: true,
    transclude: true,
    templateUrl: 'terebinth.split_dropdown_item.html',
  }

angular.module('terebinth.bootstrapSplitDropdown').directive('splitDropdownItem', directive)
