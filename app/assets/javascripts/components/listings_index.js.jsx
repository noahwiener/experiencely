ListingsIndex = React.createClass({

  getInitialState: function() {
    return { listings: WorkshopStore.all() };
  },

  componentDidMount: function() {
    ApiUtil.fetchWorkshops();
    WorkshopStore.addChangeListener(this._onChange);
    // the above call isn't putting workshops into the store
  },

  _onChange: function(){
    this.setState({ listings: WorkshopStore.all() });
  },

  render: function () {
    return (
      <div className="browse">
        <div className="jumbotron wine">
          <div className="container">
            <h1>This will be my Jumbotron</h1>
          </div>
        </div>

        <div className="container listings-index">
          <div className="row">
            {this.state.listings.map(function(workshop) {
             return <ListingsIndexItem key={workshop.title} workshop={workshop} />;
            }.bind(this))}
          </div>
        </div>
      </div>

    );
  }
});
