WorkshopText = React.createClass({

  render: function(){

    return(
          <div className="workshop-text">
            <div className="workshop-title">{this.props.workshop.title}</div>
            <div className="collapse expandable">
              <p>{this.props.workshop.location}</p>
              <p>{this.props.workshop.price}</p>
              <p>{this.props.workshop.date}</p>
            </div>
            <p className="see-details" data-toggle="collapse" data-target=".expandable"> + See All Details</p>
        </div>
    );
  }
});
