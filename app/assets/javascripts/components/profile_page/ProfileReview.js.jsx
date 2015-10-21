ProfileReview = React.createClass({

  render: function(){
    return <div className="profile-review">
            <p>Review for: {this.props.review.workshopinfo.workshop_title}</p>
            <p>Host: {this.props.review.workshopinfo.workshop_host.first_name} {this.props.review.workshopinfo.workshop_host.last_init}</p>
            <h3>{this.props.review.title}</h3>
            <p>{this.props.review.body}</p>
            <p>Rating: {this.props.review.rating}</p>
          </div>;
  }
});
