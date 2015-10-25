WorkshopReviewBar = React.createClass({
  render: function(){

  if (this.props.workshop.host.reviews_of_self.length > 0){

    return (
      <div className="reviews-avg-bar">
        <div>
          <div className="reviews-avg-stars">
            <img className="profile-tiny-img" src={this.props.workshop.host.photos[0].url}></img>
            <p className="avg-stars-p">Host {this.props.workshop.host.first_name} {this.props.workshop.host.last_name[0]}.  </p>
            <span className="stars-in-workshop-bar">< Stars clickable={false} rating={this.props.workshop.host.avg_reviews} size={'fa-1x'} /></span>
          <p className="avg-stars-p">  ({this.props.workshop.host.reviews_of_self.length})</p>
          </div>
        </div>
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
