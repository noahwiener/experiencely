WorkshopReviews = React.createClass({

  render: function(){
    return(
          <div className="workshop-reviews">
            <div className="workshop-title">{this.props.reviews.title}</div>
            <h3>Reviews of past workshops by your host {this.props.host.first_name} {this.props.host.last_name}</h3>
            <div className="reviews-list">

              {this.props.reviews.map(function(review) {
               return (<div key={review.id}>
                         <p>Review by { review.userinfo.user_first_name } { review.userinfo.user_last_name[0] }.</p>
                         <p>This will be the pic: { review.userinfo.user_pic_url }</p>
                         <p>{ review.title }</p>
                         <p>{ review.body }</p>
                          < Stars clickable={false} rating={review.rating} size={'fa-2x'} />
                         <p>-------</p>
                       </div>);
              }.bind(this))}
            </div>
        </div>
    );
  }
});
