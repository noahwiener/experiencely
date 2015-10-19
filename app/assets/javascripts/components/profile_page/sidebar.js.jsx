Sidebar = React.createClass({
  render: function(){

    return (
      <div className="profile-sidebar">
        <div className="profile-pic">
          <img src={this.props.user.photos[0].url} />

        </div>
        <div className="profile-sidebar-text">
          <h2>Hi {this.props.user.user_name}</h2>
          <p>Name: {this.props.user.first_name} {this.props.user.last_name}</p>
          <p>About Me: {this.props.user.about_me}</p>
          <p><button onClick={ApiUtil.signOut}>Log Out</button></p>
        </div>
    </div>
  );
  }
});
