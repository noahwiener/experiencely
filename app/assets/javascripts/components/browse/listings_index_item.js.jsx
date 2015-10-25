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
          <div className="listings-index-item-details">
              <h2>{this.props.workshop.title}</h2>
              <div>
                <span><i className="fa fa-info"></i> {this.props.workshop.details}</span>
              </div>
              <div>
                <span><i className="fa fa-map-marker"></i> {this.props.workshop.location}</span>
              </div>
              <div>
                <span><i className="fa fa-calendar-times-o"></i> {this.props.workshop.eng_date}</span>
              </div>
              <div>
                <span><i className="fa fa-money"></i> {this.props.workshop.price}</span>
              </div>
            </div>
          </div>
        </div>
      );
  }

});
