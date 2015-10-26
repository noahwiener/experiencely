WorkshopReviews = React.createClass({

  render: function(){

    if (this.props.reviews.length > 0){
    return(
      <div>
        <div className="container workshop-reviews-total">
          <div className="row">
            <div className="col-xs-3 col-xs-offset-3">
              <div className="stars-avg-bottom">
                < Stars clickable={false} rating={this.props.workshop.host.avg_reviews} size={'fa-2x'} />
              </div>
            </div>
            <div className="col-xs-3">
              <p className="num_reviews">({this.props.reviews.length} Host Reviews)</p>
            </div>
          </div>
        </div>

        {this.props.reviews.map(function(review) {
          var image;

          if (review.userinfo.user_pic_url){
            image = 'url(' + review.userinfo.user_pic_url + ')';
          }else {
            image= 'url(https://res.cloudinary.com/drfyambuq/image/upload/c_scale,w_126/v1445286277/empty_person1_qsxnqh.png)';
          }

          var divStyle = {
            marginTop: '10px',
            marginBottom: '3px',
            backgroundImage: image,
            backgroundSize: 'cover',
            backgroundPosition: 'center',
            height: '50px',
            width: '50px',
            borderRadius: '50%'
          };

          var title = "";
          var body = "";
          var rating = "";
          if (review.title){
            title = review.title;
          }

          if (review.body){
            body = review.body;
          }

          if (review.rating){
            rating = < Stars clickable={false} rating={review.rating} size={'fa-1x'} />;
          }

        var key = review.body;

        return (
          <div key={ key } className="container workshop-reviews">
            <div className="row">
              <div className="col-xs-2 col-xs-offset-2">
                <div className="reviewer-image" style={divStyle}></div>
                <p>{ review.userinfo.user_first_name } { review.userinfo.user_last_name[0] }.</p>
              </div>
              <div className="col-xs-5">
                <p className="review-bottom-title">{ title }</p>
                <p className="review-bottom-body">{ body }</p>
                <div className="review-bottom-workshop">{ rating }
                  <span>Review for {review.workshop.title}</span>
                </div>
              </div>
            </div>
          </div>);
        }.bind(this))}
      </div>

    );
  }else{
    return <div></div>;
  }
}
});
