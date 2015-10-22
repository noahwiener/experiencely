(function(root) {
  'use strict';

  var CHANGE_EVENT = "change";
  var _user = "";

  var currentUser = function(user){
    _user = user;
  };

  var addreview = function(review){
    _user.reviews.push(review);
  };

  var updateReview = function(review){
    for (var i = 0; i < _user.reviews.length; i++) {
      if (_user.reviews[i].workshop_id === review.workshop_id){
        _user.reviews[i] = review;
      }
    }
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
      }else if(payload.actionType === UserConstants.REVIEWS_RECEIVED){
          addreview(payload.review);
          UserStore.emit(CHANGE_EVENT);
      }else if (payload.actionType === UserConstants.UPDATED_REVIEW_RECEIVED){
          updateReview(payload.review);
          UserStore.emit(CHANGE_EVENT);
      }
    })
  });

}(this));
