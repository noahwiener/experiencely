WorkshopsAttended = React.createClass({
  mixins: [ReactRouter.History],

  getInitialState: function() {
    return {
      displaymodalIsOpen: false,
      formmodalIsOpen: false,
      updatemodalIsOpen: false
    };
  },

  openDisplayModal: function() {
    this.setState({displaymodalIsOpen: true});
  },

  openFormModal: function() {
    this.setState({formmodalIsOpen: true});
  },

  openUpdateFormModal: function(){
    this.setState({updatemodalIsOpen: true});
  },

  closeModal: function() {
    this.setState({displaymodalIsOpen: false});
    this.setState({formmodalIsOpen: false});
    this.setState({updatemodalIsOpen: false});
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
      modal = < ReviewDisplayModal close={ this.closeModal } openUpdateFormModal={this.openUpdateFormModal} review={this.props.workshop.current_user_review[0]} />;
    } else if (this.state.formmodalIsOpen === true){
      modal = < CreateReviewModal close={ this.closeModal } workshop={this.props.workshop} user={this.props.user} />;
    }else if (this.state.updatemodalIsOpen === true){
      modal = < UpdateModal close={ this.closeModal } workshop={this.props.workshop} workshop_id={this.props.workshop.id} user={this.props.user} review={this.props.workshop.current_user_review[0]} />;
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

    return(<div className="col-xs-12 col-sm-6 col-lg-4">
            {modal}
            <div className="attended" onClick={this.showReview}>
                <div className="upcoming-item">
                  < AttendedItemImage workshop={this.props.workshop} />
                <div className="upcoming-item-details">
                    <h2>{this.props.workshop.title}</h2>
                    <div>
                      <span><i className="fa fa-info"></i> {this.props.workshop.details}</span>
                    </div>
                    <div>
                      <span><i className="fa fa-calendar"></i> {this.props.workshop.eng_date}</span>
                    </div>
                    <div>
                      <span><i className="fa fa-graduation-cap"></i>  Host: {this.props.workshop.host.first_name} {this.props.workshop.host.last_name[0]}.</span>
                    </div>
                  </div>
                </div>
            </div>
          </div>);
  }

});

// logic here--the button should go to your review, put it in focus.  If there is no review, it should create a modal with a form for a new review, autofilling where appropriate
