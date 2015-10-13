(function(root) {
  'use strict';

  var CHANGE_EVENT = "change";
  var _workshops = [];

  var resetWorkshops = function(workshops){
    _workshops = workshops;
  };

  root.WorkshopStore = $.extend({}, EventEmitter.prototype, {
    all: function(){
      return _workshops.slice();
    },
    addChangeListener: function(callback){
      WorkshopStore.on(CHANGE_EVENT, callback);
    },
    dispatcherID: AppDispatcher.register(function(payload){
      if(payload.actionType === WorkshopConstants.WORKSHOPS_RECEIVED){
        resetWorkshops(payload.workshops);
        WorkshopStore.emit(CHANGE_EVENT);
      }
    })
  });

}(this));
