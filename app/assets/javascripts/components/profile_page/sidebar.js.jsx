Sidebar = React.createClass({
  mixins: [ReactRouter.History],

  getInitialState: function() {
    return {
      profileModalIsOpen: false
    };
  },

  openProfileModal: function() {
    this.setState({profileModalIsOpen: true});
  },

  closeModal: function() {
    this.setState({profileModalIsOpen: false});
  },

  render: function(){

    var imgUrl;

    if (this.props.user.photos.length === 0){
      imgUrl = 'https://res.cloudinary.com/drfyambuq/image/upload/v1445286277/empty_person1_qsxnqh.png';
    }else {
      imgUrl = this.props.user.photos[0].url;
    }

    var profileStyle = {
      backgroundImage: 'url(' + imgUrl + ')',
      backgroundSize: 'cover'
    };

    var modal;
    if (this.state.profileModalIsOpen === true){
      modal = < ProfileModal close={ this.closeModal } user={this.props.user} />;
    }

    return (
      <div className="profile-sidebar">
        <div className="profile-pic" style={profileStyle}></div>
        <div className="profile-sidebar-text">
          { modal }
          <h2>Hi {this.props.user.user_name}</h2>
          <p>Name: {this.props.user.first_name} {this.props.user.last_name}</p>
          <p>About Me: {this.props.user.about_me}</p>
          <p><button onClick={ApiUtil.signOut}>Log Out</button></p>
          <p><a className="btn btn-default" onClick={this.openProfileModal}>Update Profile</a></p>

        </div>
    </div>
  );
  }
});
