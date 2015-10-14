window.ListingsIndexItem = React.createClass({
  mixins: [ReactRouter.History],

  showWorkshop: function(){
    this.history.pushState(null, '/workshops/' + this.props.workshop.id, {});
  },

  render: function(){
    return(
      <li onClick={this.showWorkshop} className="listings-index-item">
        <p> {this.props.workshop.title}</p>
      </li>
    );
  }

});
