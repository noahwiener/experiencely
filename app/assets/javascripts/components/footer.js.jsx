Footer = React.createClass({
  top: function(){
    window.scrollTo(0,0);
  },

  render: function(){
    return(
      <footer className="footer">
          <div className="row">
            <ul className="footer-item">
              <li><a href="http://noahwiener.github.io/">Portfolio</a></li>
              <li><a href="https://www.linkedin.com/in/noahwiener">LinkedIn</a></li>
              <li><a href="https://github.com/noahwiener">Github</a> </li>
              <li><a href="http://noahwiener.github.io/ResumeNoahWiener.pdf">Resume</a></li>
              <li><a href="mailto:noah.wiener@gmail.com">Contact</a></li>
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
