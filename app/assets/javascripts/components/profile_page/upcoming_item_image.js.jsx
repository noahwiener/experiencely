UpcomingItemImage = React.createClass({
  render: function(){
    var urlsrc;
    if (this.props.workshop.photos[0]){
    urlsrc = this.props.workshop.photos[0].url;
    }else{
      urlsrc = "https://res.cloudinary.com/drfyambuq/image/upload/v1445798693/koexecg4vpzeyg6b2voi.png";
    }

    return(<div className="upcoming-pic">
            <div className="upcoming-pic-date">
              <span><i className="fa fa-calendar-times-o"></i> {this.props.workshop.eng_date}</span>
            </div>
            <img src={urlsrc} height="200px" width="100%" />
          </div>);
  }
});
