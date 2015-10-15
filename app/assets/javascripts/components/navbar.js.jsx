Navbar = React.createClass({
  render: function () {
    var x = "";
    if (window.CURRENT_USER){
      x = <a href="/#profile">{window.CURRENT_USER.first_name || window.CURRENT_USER.user_name}</a>;
    }else{
      x=<a href="/account/login">LOG IN/SIGN UP</a>;
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


//
// <li className="dropdown">
//   <a href="#" className="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span className="caret"></span></a>
//   <ul className="dropdown-menu">
//     <li><a href="#">Action</a></li>
//     <li><a href="#">Another action</a></li>
//     <li><a href="#">Something else here</a></li>
//     <li role="separator" className="divider"></li>
//     <li className="dropdown-header">Nav header</li>
//     <li><a href="#">Separated link</a></li>
//     <li><a href="#">One more separated link</a></li>
//   </ul>
// </li>
