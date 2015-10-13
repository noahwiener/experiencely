ApiUtil = {
  fetchWorkshops: function(){
    $.ajax({
      url: "api/workshops",
      dataType: 'json',
      success: function(response){
        ApiActions.receiveAll(response);
      }
    });
  }
};
