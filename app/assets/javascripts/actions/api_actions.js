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

receiveReviews: function(reviews) {
    var payload = {
      actionType: ReviewConstants.REVIEWS_RECEIVED,
      reviews: reviews
    };
    AppDispatcher.dispatch(payload);
  },

  updateReview: function(review) {
    var payload = {
      actionType: ReviewConstants.UPDATED_REVIEW_RECEIVED,
      review: review
    };
    AppDispatcher.dispatch(payload);
  }

};
