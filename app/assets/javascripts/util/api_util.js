ApiUtil = {
  fetchWorkshops: function(){
    $.ajax({
      url: "api/workshops",
      dataType: 'json',
      success: function(response){
        ApiActions.receiveAll(response);
      }
    });
  },

  signOut: function(){
    $.ajax( '/session', {
      type: 'DELETE',
      success: function (){
        window.location='/account/login';
      },
    });
  }
};
