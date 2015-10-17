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

  componentWillMount: function() {
    window.scrollTo(0,0);
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

    if (Object.keys(this.state.workshop).length === 0){
      return (<p>Your stuff is loading</p>);
    }else {

      return (
          <div>
            < WorkshopCarousel photos={this.state.workshop.photos} />
            < WorkshopReviewBar workshop={this.state.workshop} />
            < WorkshopText workshop={this.state.workshop} />
            < WorkshopDescription workshop={this.state.workshop} />
            < WorkshopHost host={this.state.workshop.host} />

            <a href="/#browse">Back to All Workshops</a>

          </div>
        );
    }
  }
});
