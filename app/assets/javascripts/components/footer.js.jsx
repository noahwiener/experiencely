Footer = React.createClass({
  top: function(){
    window.scrollTo(0,0);
  },

  render: function(){
    return(
      <footer className="footer">
          <div className="row">
            <ul className="footer-item">
              <li><a href="https://www.linkedin.com/in/noahwiener">About</a></li>
              <li><a href="https://www.linkedin.com/in/noahwiener">Team</a></li>
              <li><a href="https://www.linkedin.com/in/noahwiener">Press</a> </li>
              <li><a href="https://www.linkedin.com/in/noahwiener">Career Opportunities</a></li>
            </ul>
          </div>
        <div className="bottom-bar">
          <span className="footer-logo" onClick={this.top}>
            <img src="images/logo.png" alt="logo" height="60px"/>
            <span>A Feastly Clone</span>
          </span>
        </div>
      </footer>
    );
  }
});
