Map = React.createClass({

  componentDidMount: function(){
    var map = React.findDOMNode(this.refs.map);
    var mapOptions = {
      center: { lat: this.props.workshop.lat, lng: this.props.workshop.lng},
      scrollwheel: false,
      zoom: 13
    };
    this.map = new google.maps.Map(map, mapOptions);

    var circle = new google.maps.Circle({
      center:{lat: this.props.workshop.lat, lng: this.props.workshop.lng},
      radius: 500,
      fillColor: '#ffbe14',
      fillOpacity: 0.5,
      strokeColor: '#ffbe14',
      strokeWeight: 2,
      map: this.map,
      title: "workshop"
    });
  },


  render: function(){
    return(
      <div>
        <div className="map-bar">
          <div className="map-title">
            <span>{this.props.workshop.title}</span>
          </div>
          <div className="map-location-details">
            <span><i className="fa fa-map-marker"></i>  {this.props.workshop.location}</span>
          </div>
          <div className="exact">
            <span>(Exact address will be sent to guests in an email before the workshop)</span>
          </div>
        </div>
        <div className="map" ref="map"></div>
      </div>
    );
  }
});
