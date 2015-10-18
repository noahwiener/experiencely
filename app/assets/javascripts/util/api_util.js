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

  fetchUsers: function(){
    $.ajax({
      url: "users",
      dataType: 'json',
      success: function(response){
        ApiActions.receiveUsers(response);
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
  },

  fetchCurrent: function(){
    $.ajax({
      url: "users/current",
      dataType: 'json',
      success: function(response){
        ApiActions.receiveCurrent(response);
      }
    });
  }
};
