Navbar = React.createClass({
  render: function () {
    var x = "";
    if (window.CURRENT_USER_UNAME){
      x = (<li className="dropdown">
        <a href="#" className="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{window.CURRENT_USER_FNAME || window.CURRENT_USER_UNAME}<span className="caret"></span></a>
        <ul className="dropdown-menu">
          <li><a href="#/account/profile">My Profile</a></li>
          <li onClick={this.transitionTo("#/account/profile")}><a href="#">Attending Workshops</a></li>
          <li onClick={this.transitionTo("#/account/profile")}><a href="#">Attended Workshops</a></li>
          <li onClick={this.transitionTo("#/account/profile")}><a href="#">My Reviews</a></li>
          <li role="separator" className="divider"></li>
          <li onClick={ApiUtil.signOut}><a href="#">Log Out</a></li>
        </ul>
      </li>);
    }else{
      x=<li><a href="/account/login">LOG IN/SIGN UP</a></li>;
    }

    return (
      <div id="navbar" className="navbar-collapse collapse noah-nav">
        <ul className="nav navbar-nav">
          <li className="active"><a href="/#browse"><img src="images/logo.png" alt="logo" height="60px" /></a></li>
        </ul>
        <ul className="nav navbar-nav navbar-right">
          {x}
        </ul>
      </div>
    );
  }
});
