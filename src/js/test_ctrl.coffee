testCtrl = ($scope, $log) ->
  $scope.init = ->
    $log.warn "Just Initialized"

  $scope.init()

testCtrl.$inject = ['$scope', '$log']
angular.module('karunsiri.bootstrapSplitDropdown').controller('TestController', testCtrl)
