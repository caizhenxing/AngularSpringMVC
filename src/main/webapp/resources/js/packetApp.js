/**
 * Created by achulkin on 04.06.14.
 */
angular.module("packetControllers",[])
    .constant("packetId",1)
    .constant("labelLabel","Label")
    .controller("packetCtrl", function ($scope,$http,$window,packetId,labelLabel) {

        var simpleConfig = {withCredentials:true};
        var complConfig = {withCredentials:true, params:{packetId:packetId}};

        $http.get(contextPath + '/compts',complConfig).success(function (data) {
            $scope.compts = {};
            $scope.sortType = 'id';
            $scope.maximalIndex = 0;
            data.forEach(function(el) {
                var id = el.id;
                var label = el.label;
                $scope.compts[id] = {id : id, label : label};
                if(id > $scope.maximalIndex) {
                    $scope.maximalIndex = id;
                }
            });

            $scope.defaultComboData = [];

            $scope.persistedRecentlyRemovedItemIds = [];
            $scope.updatedItemIds = [];
            $scope.newItemIds = [];

            $http.get(contextPath + '/states',simpleConfig).success(function (data) {
                $scope.states = data;

                $scope.labels = [];
                $scope.labels.push(labelLabel);
                $scope.newValues = [];
                $scope.states.forEach(function (state) {
                    $scope.labels.push(state.label);
                });
                $http.get(contextPath + '/defaultComboData', simpleConfig).success(function (data) {
                    data.forEach(function (sd) {
                        $scope.defaultComboData.push(sd.label);
                    });
                    $scope.states.forEach(function () {
                        $scope.newValues.push($scope.defaultComboData[0]);
                    });
                    $http.get(contextPath + '/packetsState',complConfig).success(function (data) {
                        $scope.labels.defaultIndex = data;
                        $http.get(contextPath + '/comptsSupplInfo',complConfig).success(function (data) {
                            $scope.defaultValues = {};
                            $scope.comboData = {};
                            data.forEach(function (el) {
                                var comptId = el.comptId;
                                var stateId = el.stateId;
                                var label = el.label;
                                if (!$scope.comboData[comptId]) {
                                    $scope.comboData[comptId] = {};
                                }
                                if (!$scope.comboData[comptId][stateId]) {
                                    $scope.comboData[comptId][stateId] = [];
                                }
                                $scope.comboData[comptId][stateId].push(label);
                                var checked = el.checked;
                                if(checked) {
                                    if (!$scope.defaultValues[comptId]) {
                                        $scope.defaultValues[comptId] = {};
                                    }
                                    $scope.defaultValues[comptId][stateId] = label;
                                }
                            });
                        }).error(function (error) {
                            $scope.errorComptsSupplData = error;
                        });
                    }).error(function (error) {
                        $scope.errorPacketState = error;
                    });
                }).error(function (error) {
                    $scope.errorComboData = error;
                });
            }).error(function (error) {
                $scope.errorStates = error;
            });
        }).error(function (error) {
            $scope.errorCompts = error;
        });

        $scope.addNewCompt = function(newLabel) {
            var comptId = ++$scope.maximalIndex;
            $scope.compts[comptId] = {id : comptId, label : newLabel, new : true};
            $scope.newItemIds.push(comptId);

            $scope.comboData[comptId] = {};
            $scope.defaultValues[comptId] = {};
            for (var i = 1; i <= $scope.states.length; i++) {
                $scope.comboData[comptId][i] = $scope.defaultComboData;
                $scope.defaultValues[comptId][i] = $scope.newValues[i-1];
            }
        };
    
        $scope.deleteCompt = function (compt) {
            var id = compt.id;

            delete $scope.compts[id];
            delete $scope.defaultValues[id];
            delete $scope.comboData[id];

            if(!compt.new) {
                $scope.persistedRecentlyRemovedItemIds.push(id);
            }
        };

        $scope.markAsUpdated = function (comptId) {
            $scope.updatedItemIds.push(comptId);
        };
        
        $scope.save = function() {
            var newCompts = [];
            $scope.newItemIds.forEach(function (id) {
                newCompts.push({label: $scope.compts[id].label, defaultVals: $scope.getDefaultValsForCompt(id)});
                $scope.compts[id].new = false;
            });
            $scope.addComptsToBase(newCompts);
            $scope.newItemIds = [];
            $scope.collectIdsForRemoval();
            var updatedCompts = [];
            $scope.updatedItemIds.forEach(function (id) {
                updatedCompts.push({id: id, defaultVals: $scope.getDefaultValsForCompt(id)});
            });
            $scope.updateComptsInBase(updatedCompts);
            $scope.updatedItemIds = [];
            $scope.updatePacketsStateInBase(packetId,$scope.labels.defaultIndex);
        };

        $scope.getDefaultValsForCompt = function(comptId){
            var defaultVals=[];
            $scope.states.forEach(function (state,ind) {
                defaultVals.push($scope.defaultValues[comptId][ind+1]);
            });
            return defaultVals;
        };

        $scope.collectIdsForRemoval = function() {
            if(!$scope.persistedRecentlyRemovedItemIds) {
                return;
            }
            $scope.removeComptsFromBase($scope.persistedRecentlyRemovedItemIds);
            $scope.persistedRecentlyRemovedItemIds = [];
        };

        $scope.removeComptsFromBase = function (ids) {
            if (!ids) {
                return;
            }
            var removeConfig = {withCredentials:true, params:{idsToRemove:ids}};
            $http.post(contextPath + '/removeCompts',removeConfig).success(function (data) {
            }).error(function (error) {
            });
        };

        $scope.updateComptsInBase = function (updatedCompts) {
            var updateConfig = {withCredentials: true, params: {comptsParamsList: updatedCompts}};
            $http.post(contextPath + '/updateCompts', updateConfig).success(function (data) {
            }).error(function (error) {
            });
        };

        $scope.addComptsToBase = function (newCompts) {
            var addConfig = {withCredentials: true, params: {packetId: packetId, comptsParamsList: newCompts}};
            $http.post(contextPath + '/addCompts', addConfig).success(function (data) {
            }).error(function (error) {
            });
        };

        $scope.updatePacketsStateInBase = function(packetId, newStateId) {
            var updateConfig = {withCredentials:true, params:{packetId:packetId,newStateId:newStateId}};
            $http.post(contextPath + '/updatePacketsState',updateConfig).success(function (data) {
            }).error(function (error) {
            });
        };

        $scope.reloadRoute = function() {
            $window.location.reload();
        };
    });
angular.module("packetApp",["packetControllers"]);
