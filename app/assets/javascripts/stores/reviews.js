(function(root){
  var CHANGE_EVENT = "review change";
  var _reviews = {};

  var resetReviews = function(review) {
    _reviews = reviews;
  };

  var updateReview = function(newReview) {
      _reviews[newReview.id] = newReview;
  };

  root.ReviewStore = $.extend({}, EventEmitter.prototype, {

    all: function(){
      return _reviews.slice();
    },

    find: function(id) {
      return _reviews[id];
    },

    addChangeEventListener: function(callback){
      this.on(CHANGE_EVENT, callback);
    },

    removeChangeEventListner: function(callback) {
      this.removeListener(CHANGE_EVENT, callback);
    },

    dispatcherID: AppDispatcher.register(function(payload){
      if(payload.actionType === UserConstants.REVIEWS_RECEIVED){
        resetReviews(payload.review);
        ReviewStore.emit(CHANGE_EVENT);
      }else if (payload.actionType === ReviewConstants.UPDATED_REVIEW_RECEIVED){
          updateReview(payload.review);
          ReviewStore.emit(CHANGE_EVENT);
      }
    })
  });
})(this);
