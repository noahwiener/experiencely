WorkshopHost = React.createClass({
    render: function(){
      var imgUrl = this.props.host.photos[0].url;

      return (
        <div className="container">
          <div className="row">
          <div className="host-info col-sm-6 col-sm-offset-3">
            <div className="host-img">
              <img src={imgUrl} />
            </div>

            <h2>More about host {this.props.host.first_name} {this.props.host.last_name[0]}.</h2>
            <div className="host-about-me">
              <p>{this.props.host.about_me}</p>
            </div>

          </div>
          </div>
        </div>
      );
    }

  });
