WorkshopReviewBar = React.createClass({
  render: function(){
  if (this.props.workshop.host.reviews_of_self.length > 0){
    return (
      <div className="reviews-avg-bar">{this.props.workshop.host.first_name} has earned an average of {this.props.workshop.host.avg_reviews} stars

      </div>
    );
  }else {
    return (
      <div className="reviews-avg-bar">Looks like {this.props.workshop.host.first_name} hasn't been reviewed yet. Check out their workshop and let us know what you think!</div>
    );
  }
  }
});

// <StarRating name="test" caption="testingcaption" ratingAmount={5} rating={this.props.workshop.host.avg_reviews}  disabled={true} />
