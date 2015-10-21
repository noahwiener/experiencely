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
        ApiActions.receiveReview([response]);
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
