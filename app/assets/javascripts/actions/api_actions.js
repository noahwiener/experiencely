ApiActions = {
  receiveAll: function (workshops){
    AppDispatcher.dispatch({
      actionType: WorkshopConstants.BENCHES_RECEIVED,
      workshops: workshops
    });
  }
};
