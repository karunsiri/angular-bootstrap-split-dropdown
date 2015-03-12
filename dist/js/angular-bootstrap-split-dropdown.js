(function() {
  angular.module('karunsiri.bootstrapSplitDropdown', []);

}).call(this);

(function() {
  var testCtrl;

  testCtrl = function($scope, $log) {
    $scope.init = function() {
      return $log.warn("Just Initialized");
    };
    return $scope.init();
  };

  testCtrl.$inject = ['$scope', '$log'];

  angular.module('karunsiri.bootstrapSplitDropdown').controller('TestController', testCtrl);

}).call(this);
