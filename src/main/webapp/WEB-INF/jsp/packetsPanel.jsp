<div ng-controller="packetsPanelCtrl">
    <div class="flex" ng-repeat="pkt in $parent.data.allPackets">
        <a ng-click="$parent.selectPacket(pkt)"
           ng-class="getPacketClass(pkt)">
            Packet#<span ng-bind="pkt.id"/>
        </a>
        <a ng-click="saveAllChangesToBase(pkt.id)"
           class="btn btn-sm btn-success expanded-margin-bottom">
            Save
        </a>
        <a ng-click="$parent.loadPacketById(pkt.id)"
           class="btn btn-sm btn-warning expanded-margin-bottom">
            Reload
        </a>
        <a ng-click="deletePacketLocally(pkt)"
           class="btn btn-sm btn-danger expanded-margin-bottom">
            Del
        </a>
    </div>
    <div class="btn-group" id="aggregate-btns" ng-if="showAggregateButtons()">
        <a ng-click="addPacketLocally()"
           class="btn btn-md btn-block btn-default">
            Add packet
        </a>
        <a ng-click="saveAllChangesToBase(null)"
           class="btn btn-md btn-block btn-success">
            Save changes
        </a>
        <a ng-click="reloadRoute()"
           class="btn btn-md btn-block btn-warning">
            Reload all
        </a>
    </div>
</div>