(function(root) {
  'use strict';

  var _workshops = [];

  var resetBenches = function(workshops){
    _workshops = workshops;
  };

  root.WorkshopStore = $.extend({}, EventEmitter.prototype, {
    all: function(){
      return _workshops.slice();
    },
    dispatcherID: AppDispatcher.register(function(payload){
      if(payload.actionType === WorkshopConstants.WORKSHOPS_RECEIVED){
        resetWorkshops(payload.benches);
        WorkshopStore.emit(CHANGE_EVENT);
      }
    })
  });

}(this));
