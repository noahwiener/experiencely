ApiActions = {
  receiveAll: function (workshops){
    AppDispatcher.dispatch({
      actionType: WorkshopConstants.WORKSHOPS_RECEIVED,
      workshops: workshops
    });
  },
  receiveCurrent: function(user){
    AppDispatcher.dispatch({
      actionType: UserConstants.CURRENT_USER_RECEIVED,
      user: user
  });
  },
  receiveSignUp: function(signup){
    AppDispatcher.dispatch({
      actionType: WorkshopConstants.SIGNUP_RECEIVED,
      signup: signup
  });
  },

  receiveCancelSignUp: function(signup){
    AppDispatcher.dispatch({
      actionType: WorkshopConstants.SIGNUP_RECEIVED,
      signup: signup
  });
  },

receiveReview: function(review) {
    var payload = {
      actionType: UserConstants.REVIEWS_RECEIVED,
      review: review
    };
    AppDispatcher.dispatch(payload);
  },

  updateReview: function(review) {
    var payload = {
      actionType: UserConstants.UPDATED_REVIEW_RECEIVED,
      review: review
    };
    AppDispatcher.dispatch(payload);
  },

  fetchSingleWorkshop: function(id) {
    ApiUtil.fetchSingleWorkshop(id);
  },

  receiveSingleWorkshop: function(workshop){
    var payload = {
      actionType: WorkshopConstants.RECEIVE_SINGLE_WORKSHOP,
      workshop: workshop
    };
    AppDispatcher.dispatch(payload);
  }

};
