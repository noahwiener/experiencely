(function(root) {
  'use strict';

  var CHANGE_EVENT = "change";
  var _user = "";

  var currentUser = function(user){
    _user = user;
  };

  root.UserStore = $.extend({}, EventEmitter.prototype, {
    current: function(){
      return jQuery.extend(true, {}, _user);
    },
    addChangeListener: function(callback){
      UserStore.on(CHANGE_EVENT, callback);
    },
    removeChangeListener: function(callback){
      this.removeListener(CHANGE_EVENT, callback);
    },

    dispatcherID: AppDispatcher.register(function(payload){
      if(payload.actionType === UserConstants.CURRENT_USER_RECEIVED){
        currentUser(payload.user);
        UserStore.emit(CHANGE_EVENT);
      }
    })
  });

}(this));
