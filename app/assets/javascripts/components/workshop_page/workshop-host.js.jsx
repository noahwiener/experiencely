WorkshopHost = React.createClass({
    render: function(){
      var imgUrl = "images/workshops/" + this.props.host.photos[0].url;

      return (
        <div className="host-img">
          <img src={imgUrl} />
        </div>
      );
    }

  });
