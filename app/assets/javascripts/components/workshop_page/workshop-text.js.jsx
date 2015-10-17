WorkshopText = React.createClass({

  render: function(){

    return(
          <div className="workshop-text">
            <div className="workshop-title">{this.props.workshop.title}</div>
            <p>Location: {this.props.workshop.location}</p>
            <div className="collapse expandable">
              <p>{this.props.workshop.details}</p>
              <p>Cost: {this.props.workshop.price}</p>
              <p>Host: {this.props.workshop.host.first_name} {this.props.workshop.host.last_name}</p>
            </div>
            <p className="see-details" data-toggle="collapse" data-target=".expandable"> + See All Details</p>
        </div>
    );
  }
});
