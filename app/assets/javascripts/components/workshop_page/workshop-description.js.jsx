WorkshopDescription = React.createClass({

  render: function(){
    var imgUrl = "images/workshops/"  + this.props.workshop.id + "/" + this.props.workshop.photos[0].url;
    var divStyle = {
      backgroundImage: 'url(' + imgUrl + ')'
    };

    return (
      <div className="workshop-description" >
        <div className="workshop-description-background" style={divStyle}></div>
        <div className="container">
          <div className="row">
            <div className="description-text col-sm-6 col-sm-offset-3">
              {this.props.workshop.body}
            </div>
          </div>
        </div>
      </div>
    );
  }

});

//
// backgroundImage: 'url(' + imgUrl + ')',
// WebkitFilter: 'blur(10px) saturate(2)',
// opacity: 0.5
