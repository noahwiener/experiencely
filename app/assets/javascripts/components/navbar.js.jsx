Navbar = React.createClass({
  render: function () {
    var x = "";
    var img = "";

    if (window.CURRENT_USER_PIC){
      img = <img src={window.CURRENT_USER_PIC} className="profile-navbar-img"></img>;
    }

    if (window.CURRENT_USER_UNAME){
      x = (
        <li className="dropdown">
        <a href="#" className="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{img} {window.CURRENT_USER_FNAME || window.CURRENT_USER_UNAME}<span className="caret"></span></a>
        <ul className="dropdown-menu">
          <li><a href="#/account/profile">My Profile</a></li>
          <li><a href="#/account/profile?attending">Attending Workshops</a></li>
          <li><a href="#/account/profile?attended">Attended Workshops</a></li>
          <li><a href="#/account/profile?reviews">My Reviews</a></li>
          <li role="separator" className="divider"></li>
          <li onClick={ApiUtil.signOut}><a href="/account/login">Log Out</a></li>
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
