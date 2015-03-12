directive = ->
  return {
    restrict: 'E',
    replace: true,
    templateUrl: 'terebinth.split_dropdown_divider.html'
  }

angular.module('terebinth.bootstrapSplitDropdown').directive('splitDropdownDivider', directive)
