(function(root) {
  'use strict';

  var CHANGE_EVENT = "change";
  var _workshops = [];

  var resetWorkshops = function(workshops){
    _workshops = workshops;
  };

  var findById = function(id){
    var result;
    _workshops.forEach (function (workshop){
      if (workshop.id === id){
        result = workshop;
      }
    });
    return result;
  };

  root.WorkshopStore = $.extend({}, EventEmitter.prototype, {

    all: function(){
      return _workshops.slice();
    },
    addChangeListener: function(callback){
      WorkshopStore.on(CHANGE_EVENT, callback);
      this.setMaxListeners(20);
    },
    removeChangeListener: function(callback){
      this.removeListener(CHANGE_EVENT, callback);
    },

    dispatcherID: AppDispatcher.register(function(payload){
      if(payload.actionType === WorkshopConstants.WORKSHOPS_RECEIVED){
        resetWorkshops(payload.workshops);
        WorkshopStore.emit(CHANGE_EVENT);
      } else if (payload.actionType === WorkshopConstants.SIGNUP_RECEIVED){
        var workshop = findById(payload.signup.workshop_id);
        workshop.isSignedUp = !workshop.isSignedUp;
        WorkshopStore.emit(CHANGE_EVENT);
      }
  })
  });

}(this));
