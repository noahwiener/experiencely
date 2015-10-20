window.ListingsIndexItem = React.createClass({
  mixins: [ReactRouter.History],

  getInitialState: function() {
    return {
      isSignedUp: this.props.workshop.isSignedUp
    };
  },

  componentDidMount: function() {
    WorkshopStore.addChangeListener(this._onChange);
  },

  componentWillUnmount: function() {
    WorkshopStore.removeChangeListener(this._onChange);
  },

  _onChange: function(signedUp){
    this.setState({isSignedUp: signedUp});
  },

  showWorkshop: function(){
    this.history.pushState(null, '/workshops/' + this.props.workshop.id, {});
  },

  render: function(){

      return(
        <div onClick={this.showWorkshop} className="col-xs-12 col-sm-6 col-lg-4">
          <div className="listings-index-item">
            < ListingsIndexItemImage workshop={this.props.workshop} />
            <h2>{this.props.workshop.title}</h2>
            <p>{this.props.workshop.details}</p>
            <p>{this.props.workshop.location}</p>
            <p>{this.props.workshop.date}</p>
            <p>{this.props.workshop.price}</p>
          </div>
        </div>
      );
  }

});
