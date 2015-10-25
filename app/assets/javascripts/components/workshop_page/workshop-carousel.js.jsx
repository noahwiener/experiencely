WorkshopCarousel = React.createClass({

  render: function(){
    var date = "";
    var start_time = "";
    var photos = [];
    if (this.props.workshop.date){ date = this.props.workshop.eng_date; }
    if (this.props.workshop.start_time) {start_time = this.props.workshop.start_time; }
    if (this.props.photos){ photos = this.props.photos; }

    return (
      <div id="myCarousel" className="carousel slide" data-ride="carousel">
        <div className="carousel-caption">
          <div className="carousel-date">
            <span>{ date }</span>
          </div>
          <div className="carousel-time">
            <span>{ start_time }</span>
          </div>
        </div>
        <div className="slides-cont">
          <ol className="carousel-indicators">
            { photos.map(function (photo, idx) {
                var klass = (idx === 0 ? 'active' : '');
                return (
                  <li data-target="#myCarousel" data-slide-to={idx} key={idx + "_" + photo.url} className={klass}></li>
                );
              })
            }
          </ol>

          <div className="carousel-inner" role="listbox">
          {
            photos.map(function(photo, idx){
              var klass = idx === 0 ? 'item active' : 'item';
              return (
                <div key={photo.url} className={klass}>
                  <img className="side left"  src={photo.url} />
                  <img className="center-image" src={photo.url} />
                  <img className="side right" src={photo.url} />
                </div>
              );
            }.bind(this))
          }
        </div>

      </div>

      <a className="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
       <span className="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
       <span className="sr-only">Previous</span>
     </a>
     <a className="right carousel-control" href="#myCarousel" role="button" data-slide="next">
       <span className="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
       <span className="sr-only">Next</span>
     </a>
      </div>
    );


    }
});
