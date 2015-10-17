(function(root) {
  'use strict';

  var CHANGE_EVENT = "change";
  var _users = [];

  var resetUsers = function(users){
    _users = users;
  };

  root.UserStore = $.extend({}, EventEmitter.prototype, {
    all: function(){
      return _users.slice();
    },
    addChangeListener: function(callback){
      UserStore.on(CHANGE_EVENT, callback);
    },
    removeChangeListener: function(callback){
      this.removeListener(CHANGE_EVENT, callback);
    },

    dispatcherID: AppDispatcher.register(function(payload){
      if(payload.actionType === UserConstants.USERS_RECEIVED){
        resetUsers(payload.users);
        UserStore.emit(CHANGE_EVENT);
      }
    })
  });

}(this));
