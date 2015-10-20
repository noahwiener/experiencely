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

    return(<div className="col-xs-12 col-sm-6 reservation">
            <h2>{this.props.workshop.title}</h2>
            <h3>{this.props.workshop.date}</h3>
            <h3>{this.props.workshop.start_time}</h3>

            <div style={divStyle}></div>
              <p>Location: {this.props.workshop.location}</p>
              <p>{this.props.workshop.details}</p>
              <p>Cost: {this.props.workshop.price}</p>
              <p>Host: {this.props.workshop.host.first_name} {this.props.workshop.host.last_name}</p>
            <p><a className="btn btn-default" onClick={this.showWorkshop}>View details &raquo;</a></p>

          </div>);
  }

});
