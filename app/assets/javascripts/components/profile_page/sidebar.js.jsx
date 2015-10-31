Sidebar = React.createClass({
  mixins: [ReactRouter.History],

  getInitialState: function() {
    return {
      profileModalIsOpen: false,
      image_url: ''
    };
  },

  openProfileModal: function() {
    this.setState({profileModalIsOpen: true});
  },

  closeModal: function() {
    this.setState({profileModalIsOpen: false});
  },

  callCloudinary: function(){
    cloudinary.openUploadWidget({cloud_name: window.CLOUD_NAME, upload_preset: window.UPLOAD_PRESET},
      function(error, result) {
        if (error){
      } else {
        this.setState({image_url: result[0].url});
        var profile_params = { user_id: this.props.user.id, photo_url: this.state.image_url };
        ApiUtil.updateProfile({ user: profile_params });
      }
    }.bind(this));

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
      backgroundSize: 'cover',
      backgroundPosition: 'center center'
    };

    var modal;
    if (this.state.profileModalIsOpen === true){
      modal = < ProfileModal close={ this.closeModal } user={this.props.user} />;
    }

    return (
      <div className="profile-sidebar">
        <div className="profile-pic" style={profileStyle}>
          <div className="update-profile-pic">
            <span onClick={ this.callCloudinary }><i className="fa fa-plus"></i> Update Profile Picture</span>
          </div>
        </div>
        <div className="profile-sidebar-text">
          { modal }
          <p className="profile-buttons">
            <a className="btn profile-btn" onClick={this.openProfileModal}>Update Profile</a>
            <a className="btn profile-btn" onClick={ApiUtil.signOut}>Log Out</a>
          </p>
          <p><span className="sidebar-section">Name:</span> {this.props.user.first_name} {this.props.user.last_name}</p>
          <p><span className="sidebar-section">About Me:</span> {this.props.user.about_me}</p>


        </div>
    </div>
  );
  }
});
