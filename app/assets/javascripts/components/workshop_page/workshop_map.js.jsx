Map = React.createClass({

  componentDidMount: function(){
    var map = React.findDOMNode(this.refs.map);
    var mapOptions = {
      center: { lat: this.props.workshop.lat, lng: this.props.workshop.lng},
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
      <div className="map" ref="map"></div>
    );
  }
});
