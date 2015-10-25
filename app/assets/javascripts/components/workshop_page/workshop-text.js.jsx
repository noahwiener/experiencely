WorkshopText = React.createClass({

  render: function(){

    return(
          <div className="workshop-text">
            <div className="workshop-title">{this.props.workshop.title}</div>
              <div>
                <p className="workshop-sub-title">{this.props.workshop.details}</p>
                <div className="row icon-row">
                  <div className="col-xs-2 col-xs-offset-2">
                    <i className="fa fa-calendar-times-o"></i>
                  </div>
                  <div className="col-xs-2">
                    <i className="fa fa-map-marker"></i>
                  </div>
                  <div className="col-xs-2">
                    <i className="fa fa-money"></i>
                  </div>
                  <div className="col-xs-2">
                    <i className="fa fa-user"></i>
                  </div>
                </div>
                <div className="info-row row">
                  <div className="col-xs-2 col-xs-offset-2">
                    <span className="workshop-text-detail">{this.props.workshop.eng_date}</span>
                  </div>
                  <div className="col-xs-2">
                    <span className="workshop-text-detail">{this.props.workshop.location}</span>
                  </div>
                  <div className="col-xs-2">
                    <span className="workshop-text-detail">{this.props.workshop.price}</span>
                  </div>
                  <div className="col-xs-2">
                    <span className="workshop-text-detail">{this.props.workshop.attendees}/{this.props.workshop.max_attendees}</span>
                  </div>
                </div>
              </div>
          </div>
    );
  }
});
