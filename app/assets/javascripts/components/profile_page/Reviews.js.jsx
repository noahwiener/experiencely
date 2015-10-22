Reviews = React.createClass({
  getInitialState: function() {
    return {
      user: this.props.user,
    };
  },

  render: function(){    
    return(
      <div>
        <h1>Reviews</h1>
          {this.props.user.reviews.map(function(review) {
           return <ProfileReview key={review.workshop_id} review={review} id={review.workshop_id} user={this.props.user} openUpdateFormModal={ this.openUpdateFormModal }/>;
          }.bind(this))}
      </div>
  );}
});
