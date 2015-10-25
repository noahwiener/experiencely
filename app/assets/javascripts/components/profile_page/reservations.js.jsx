Reservation = React.createClass({
  mixins: [ReactRouter.History],

  showWorkshop: function(){
    this.history.pushState(null, '/workshops/' + this.props.workshop.id, {});
  },

  render: function(){
    var divStyle = {
      backgroundImage: 'url(' + this.props.workshop.photos[0].url + ')',
      backgroundSize: 'cover',
      display: 'block',
      height: '200px'
    };

    return(<div className="col-xs-12 col-sm-6 col-lg-4">
            <div className="reservation" onClick={this.showWorkshop}>
                <div className="upcoming-item">
                  < UpcomingItemImage workshop={this.props.workshop} />
                <div className="upcoming-item-details">
                    <h2>{this.props.workshop.title}</h2>
                    <div>
                      <span><i className="fa fa-info"></i> {this.props.workshop.details}</span>
                    </div>
                    <div>
                      <span><i className="fa fa-map-marker"></i> {this.props.workshop.location}</span>
                    </div>
                  </div>
                </div>
            </div>
          </div>);
  }

});
