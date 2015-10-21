PastWorkshop = React.createClass({
  mixins: [ReactRouter.History],

  getInitialState: function() {
    return {
      modalIsOpen: false
    };
  },

  openModal: function() {
    this.setState({modalIsOpen: true});
  },

  closeModal: function() {
    this.setState({modalIsOpen: false});
  },

  showReview: function(){
    if (this.props.workshop.reviewed){
      this.openModal();
    } else {
      alert("Send this to new review form");
    }
  },

  render: function(){

    var modal;
    if (this.state.modalIsOpen === true){
      modal = < ReviewDisplayModal close={ this.closeModal } review={this.props.workshop.current_user_review[0]} />;
    }else{
      modal = "";
    }

    var divStyle = {
      backgroundImage: 'url(' + this.props.workshop.photos[0].url + ')',
      backgroundSize: 'cover',
      display: 'block',
      height: '200px'
    };

    return(<div className="col-xs-12 col-sm-6">
            <div className="reservation">
              { modal }
              <h2>{this.props.workshop.title}</h2>
              <h3>{this.props.workshop.date}</h3>

              <div style={divStyle}></div>
                <p>Location: {this.props.workshop.location}</p>
                <p>{this.props.workshop.details}</p>
                <p>Host: {this.props.workshop.host.first_name} {this.props.workshop.host.last_name}</p>
              <p><a className="btn btn-default" onClick={this.showReview}>Write/Edit Review</a></p>
            </div>
          </div>);
  }

});

// logic here--the button should go to your review, put it in focus.  If there is no review, it should create a modal with a form for a new review, autofilling where appropriate
