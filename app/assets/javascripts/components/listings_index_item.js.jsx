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

  _onChange: function(signedUp){
    this.setState({isSignedUp: signedUp});
  },

  showWorkshop: function(){
    this.history.pushState(null, '/workshops/' + this.props.workshop.id, {});
  },

  render: function(){
    var sign;
    if (this.props.workshop.isSignedUp){
      sign = "You are signed up for this event";
    }else {
      sign = "you should sign up";
    }
    if (this.props.workshop.photos[0]){
    var urlsrc = this.props.workshop.photos[0].url;}
    return(
      <div onClick={this.showWorkshop} className="col-xs-12 col-sm-6 col-lg-4">
        <div className="listings-index-item">
          <img src={urlsrc} height="290px" />
          <h2>{this.props.workshop.title}</h2>
          <p>{this.props.workshop.details}</p>
          <p>{this.props.workshop.location}</p>
          <p>{this.props.workshop.date}</p>
          <p>{this.props.workshop.price}</p>
          <p>{sign}</p>
        </div>
      </div>
    );
  }

});
