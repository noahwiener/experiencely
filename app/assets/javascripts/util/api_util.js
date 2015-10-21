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

  fetchSingleWorkshop: function(workshop_id){
    $.ajax({
      url: "api/workshops/" + workshop_id,
      dataType: 'json',
      success: function(response){
        ApiActions.receiveSingleWorkshop(response);
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

  fetchCurrentUser: function(){
    $.ajax({
      url: "users/1",
      dataType: 'json',
      success: function(response){
        ApiActions.receiveCurrent(response);
        ApiActions.receiveAll(response.attended);
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

  updateProfile: function(profile_params){
    $.ajax( '/users/' + profile_params.user_id, {
      type: 'PATCH',
      data: {profile_params: params},
      success: function (response){
        ApiActions.receiveCurrent(response);
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
  },

  signUp: function(id){
    $.ajax({
      url: "api/signups",
      type: 'POST',
      data: { workshop_id: id },
      success: function(response){
        ApiActions.receiveSignUp(response);
      }
    });
  },

  cancelSignUp: function(id){
    $.ajax({
      url: "api/signups/" + id,
      type: 'DELETE',
      data: { workshop_id: id },
      success: function(response){
        ApiActions.receiveCancelSignUp(response);
      }
    });
  },

  submitReview: function(review) {
    $.ajax({
      url: "api/reviews",
      type: "POST",
      dataType: "json",
      data: {review: review},
      success: function(response) {
        ApiActions.receiveReview(response);
        ApiActions.fetchSingleWorkshop(response.workshop_id);
      }
    });
  },

  updateReview: function(review) {
    console.log(review);
    $.ajax({
      url: "api/reviews/"+review.id,
      type: "PATCH",
      dataType: "json",
      data: {review: review},
      success: function(review) {
        ApiActions.updateReview(review);
      }
    });
  }
};
