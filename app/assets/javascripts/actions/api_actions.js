ApiActions = {
  receiveAll: function (workshops){
    AppDispatcher.dispatch({
      actionType: WorkshopConstants.WORKSHOPS_RECEIVED,
      workshops: workshops
    });
  }
};
