WorkshopCarousel = React.createClass({

  render: function(){
    return (
      <div id="myCarousel" className="carousel slide" data-ride="carousel">
        <div className="slides-cont">
          <ol className="carousel-indicators">
            { this.props.photos.map(function (_, idx) {
                var klass = (idx === 0 ? 'active' : '');
                return (
                  <li data-target="#myCarousel" data-slide-to={idx} className={klass}></li>
                );
              })
            }
          </ol>

          <div className="carousel-inner" role="listbox">
          {
            this.props.photos.map(function(photo, idx){
              var klass = idx === 0 ? 'item active' : 'item';
              return (
                <div className={klass}>
                  <img className="side left" src={"images/workshops/" + photo.url} />
                  <img className="center-image" src={"images/workshops/" + photo.url} />
                  <img className="side right" src={"images/workshops/" + photo.url} />
                </div>
              );
            })
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
