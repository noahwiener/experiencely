var Workshop = React.createClass({
  getInitialState: function () {
    var id = this.props.params.id;
    var workshop = this._findWorkshopById(id) || {} ;
    return { workshop: workshop };
  },
  _findWorkshopById: function (id) {
    var result;
     WorkshopStore.all().forEach(function (workshop) {
      if (id == workshop.id) {
        result = workshop;
      }
    }.bind(this));
     return result;
  },
  componentDidMount: function () {
    WorkshopStore.addChangeListener(this._workshopChanged);
    ApiUtil.fetchWorkshops();
  },

  componentWillUnmount: function (){
    WorkshopStore.removeChangeListener(this._workshopChanged);
  },

  componentWillReceiveProps: function(newprops){
      var id = newprops.params.id;
      var workshop = this._findWorkshopById(id) || {} ;
      this.setState({ workshop: workshop });
  },

  _workshopChanged: function () {
    var id = this.props.params.id;
    var workshop = this._findWorkshopById(id);
    this.setState({ workshop: workshop });
  },
  render: function(){
    return (
        <div>
          < WorkshopCarousel photos={this.state.workshop.photos || []} />
          <div className="reviews-avg-bar">Some Review Stuff Will Go Here</div>
          <div className="workshop-text">
            <div className="workshop-title">{this.state.workshop.title}</div>
            <div className="collapse" id="expandable">
              <p>{this.state.workshop.location}</p>
              <p>{this.state.workshop.body}</p>
            </div>
            <button className="btn" data-toggle="collapse" data-target="#expandable">View Details</button>
          </div>
          <a href="/#browse">Back to All Workshops</a>

        </div>
      );
    }
});
