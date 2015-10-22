ProfileReview = React.createClass({

  getInitialState: function() {
    return {
      updatemodalIsOpen: false
    };
  },

  openUpdateFormModal: function(){
    this.setState({updatemodalIsOpen: true});
  },

  closeModal: function() {
    this.setState({updatemodalIsOpen: false});
  },


  handleClick: function(){
    this.openUpdateFormModal();
  },

  render: function(){
    var modal;
    if (this.state.updatemodalIsOpen === true){
      modal = < UpdateModal close={ this.closeModal } workshop={this.props.review.workshop} workshop_id={this.props.review.workshop_id} user={this.props.user} review={this.props.review} />;
    }else{
      modal = "";
    }

    return <div className="profile-review">
        { modal }
            <p>Review for: {this.props.review.workshop.title}</p>
            <p>Host: {this.props.review.workshop.workshop_host.first_name} {this.props.review.workshop.workshop_host.last_init}</p>
            <h3>{this.props.review.title}</h3>
            <p>{this.props.review.body}</p>
            < Stars clickable={false} rating={this.props.review.rating} size={'fa-2x'} />

            <button className="btn" type="submit" onClick={this.handleClick}>Update Your Review</button>
          </div>;
  }
});
