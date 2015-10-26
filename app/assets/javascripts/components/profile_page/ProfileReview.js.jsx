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

    if (this.props.review.userinfo.user_pic_url){
      image = 'url(' + this.props.review.workshop.workshop_host.host_photo + ')';
    }else {
      image= 'url(https://res.cloudinary.com/drfyambuq/image/upload/c_scale,w_126/v1445286277/empty_person1_qsxnqh.png)';
    }

    var divStyle = {
      marginTop: '10px',
      marginBottom: '3px',
      backgroundImage: image,
      backgroundSize: 'cover',
      height: '80px',
      width: '80px',
      borderRadius: '50%'
    };

    var title = "";
    var body = "";
    var rating = "";
    if (this.props.review.title){
      title = this.props.review.title;
    }

    if (this.props.review.body){
      body = this.props.review.body;
    }

    if (this.props.review.rating){
      rating = < Stars clickable={false} rating={this.props.review.rating} size={'fa-1x'} />;
    }

    return (<div className="profile-review">
        { modal }
        <div key={this.props.review.id} className="profile-reviews">
          <div className="row">
            <div className="col-xs-3">
              <div className="review-host-image" style={divStyle}></div>
              <p className="host-name-review">Host {this.props.review.workshop.workshop_host.first_name} {this.props.review.workshop.workshop_host.last_init}</p>
              <button className="update-review-btn" type="submit" onClick={this.handleClick}>Update Review</button>
            </div>
            <div className="col-xs-9">
              <p className="profle-review-bottom-title">{ title }</p>
              <p className="profle-review-bottom-body">{ body }</p>
              <div className="profle-review-bottom-workshop">{ rating }</div>
            </div>
          </div>
        </div>
  </div>);
}
});
