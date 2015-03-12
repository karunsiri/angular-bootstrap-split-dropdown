(function() {
  angular.module('terebinth.bootstrapSplitDropdown', []);

}).call(this);

(function() {
  var directive;

  directive = function($parse) {
    return {
      restrict: 'E',
      transclude: true,
      templateUrl: 'terebinth.split_dropdown.html'
    };
  };

  directive.$inject = ['$parse'];

  angular.module('terebinth.bootstrapSplitDropdown').directive('terebinthSplitDropdown', directive);

}).call(this);

(function() {
  var directive;

  directive = function() {
    return {
      restrict: 'E',
      replace: true,
      templateUrl: 'terebinth.split_dropdown_divider.html'
    };
  };

  angular.module('terebinth.bootstrapSplitDropdown').directive('splitDropdownDivider', directive);

}).call(this);

(function() {
  var directive;

  directive = function() {
    return {
      restrict: 'E',
      require: '^terebinthSplitDropdown',
      replace: true,
      transclude: true,
      templateUrl: 'terebinth.split_dropdown_item.html'
    };
  };

  angular.module('terebinth.bootstrapSplitDropdown').directive('splitDropdownItem', directive);

}).call(this);

angular.module("terebinth.bootstrapSplitDropdown").run(["$templateCache", function($templateCache) {$templateCache.put("terebinth.split_dropdown.html","<div class=\"btn-group\">\n  <button type=\"button\" class=\"btn btn-success\">Action</button>\n  <button type=\"button\" class=\"btn btn-success dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n    <span class=\"caret\"></span>\n    <span class=\"sr-only\">Toggle Dropdown</span>\n  </button>\n  <ul class=\"dropdown-menu\" role=\"menu\" ng-transclude>\n  </ul>\n</div>\n");
$templateCache.put("terebinth.split_dropdown_divider.html","<li class=\"divider\"></li>\n");
$templateCache.put("terebinth.split_dropdown_item.html","<li ng-transclude></li>\n");}]);