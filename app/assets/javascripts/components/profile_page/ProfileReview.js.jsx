ProfileReview = React.createClass({
  render: function(){
    return <div className="profile-review">
            <p>Review for: {this.props.review.workshop.title}</p>
            <p>Host: {this.props.review.workshop.host.first_name} {this.props.review.workshop.host.last_name}</p>
            <h3>{this.props.review.title}</h3>
            <p>{this.props.review.body}</p>
            <p>Rating: {this.props.review.rating}</p>
          </div>;
  }
});
