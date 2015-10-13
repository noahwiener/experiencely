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
      <div>
        <ul>{
        this.state.listings.map(function(workshop) {
          return(
            <li key={workshop.title}>
              title: {workshop.title}
            </li>
          );
        }.bind(this))
      }
      </ul>
    </div>
    );
  }
});



// componentDidMount: function() {
//   WorkshopStore.addChangeListener(this._onChange);
// },
//
// _onChange: function() {
//   this.setState({listings: WorkshopStore.all() });
// },
//
// _onClick: function(){
//   console.log("hi");
//     // this.props.history.pushState(null, "/");
// },
