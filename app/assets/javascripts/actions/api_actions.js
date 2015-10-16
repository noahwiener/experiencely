ApiActions = {
  receiveAll: function (workshops){
    AppDispatcher.dispatch({
      actionType: WorkshopConstants.WORKSHOPS_RECEIVED,
      workshops: workshops
    });
  },
  receiveUsers: function (users){
    AppDispatcher.dispatch({
      actionType: UserConstants.USERS_RECEIVED,
      users: users
    });
  }
};
