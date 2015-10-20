ListingsIndexItemImage = React.createClass({
  render: function(){
    if (this.props.workshop.photos[0]){
    var urlsrc = this.props.workshop.photos[0].url;}

    if(this.props.workshop.isSignedUp){
      return(<div className="listings-index-pic">
              <strong className="active-image-banner">Reserved</strong>
              <img src={urlsrc} height="290px" />
            </div>);
    }else if (this.props.workshop.max_attendees - this.props.workshop.attendees < 10){
      return(<div className="listings-index-pic">
                <strong className="image-banner">{this.props.workshop.max_attendees - this.props.workshop.attendees} Spots Left!</strong>
                <img src={urlsrc} height="290px" />
              </div>);
    }else{
      return(<div className="listings-index-pic">
                <img src={urlsrc} height="290px" />
              </div>);
  }
  }
});
