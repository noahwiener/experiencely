PastWorkshop = React.createClass({
  mixins: [ReactRouter.History],

  getInitialState: function() {
    return {
      displaymodalIsOpen: false,
      formmodalIsOpen: false
    };
  },

  openDisplayModal: function() {
    this.setState({displaymodalIsOpen: true});
  },

  openFormModal: function() {
    this.setState({formmodalIsOpen: true});
  },

  closeModal: function() {
    this.setState({displaymodalIsOpen: false});
    this.setState({formmodalIsOpen: false});
  },

  showReview: function(){
    if (this.props.workshop.reviewed){
      this.openDisplayModal();
    } else {
      this.openFormModal();
    }
  },

  render: function(){
    var modal;
    if (this.state.displaymodalIsOpen === true){
      modal = < ReviewDisplayModal close={ this.closeModal } review={this.props.workshop.current_user_review[0]} />;
    } else if (this.state.formmodalIsOpen === true){
      modal = < CreateReviewModal close={ this.closeModal } workshop={this.props.workshop} />;
    }else{
      modal = "";
    }

    var divStyle = {
      backgroundImage: 'url(' + this.props.workshop.photos[0].url + ')',
      backgroundSize: 'cover',
      display: 'block',
      height: '200px'
    };

    var btntext;
    if (this.props.workshop.reviewed){
      btntext = "Read your review";
    } else {
      btntext = "Write Review";
    }

    return(<div className="col-xs-12 col-sm-6">
            <div className="reservation">
              { modal }
              <h2>{this.props.workshop.title}</h2>
              <h3>{this.props.workshop.date}</h3>

              <div style={divStyle}></div>
                <p>Location: {this.props.workshop.location}</p>
                <p>{this.props.workshop.details}</p>
                <p>Host: {this.props.workshop.host.first_name} {this.props.workshop.host.last_name}</p>
              <p><a className="btn btn-default" onClick={this.showReview}>{btntext}</a></p>
            </div>
          </div>);
  }

});

// logic here--the button should go to your review, put it in focus.  If there is no review, it should create a modal with a form for a new review, autofilling where appropriate
