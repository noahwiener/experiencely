Home = React.createClass({

  componentDidMount: function() {
    $(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});
  },

  render: function () {
    return (
      <div className = "home">
        <header id="header" className="header">
          <div className="headercontent">
            <div className="maintitle">Learn New Skills</div>
            <div className="subtitle">Our professional hosts lead workshops in their areas of expertise</div>
            <a href="#/browse" className="btn browseworkshops">BROWSE WORKSHOPS ></a>
          </div>
        </header>

        <section id="homepage">
          <div className="home-body">
            <div className="body-title">Explore Experiencely</div>
            <div className="body-steps">
              <div id="step1" className="exp-home-bg step1">
                <div className="exp-home-title">Unparalleled Insider Access</div>
                <div className="exp-homeimg step1"></div>
                <div className="exp-homequote">
                  <div className="col-lg-4 col-md-3 col-1-sm">&nbsp;</div>
                  <div className="col-lg-4 col-md-6 col-10-sm">
                    <div className="exp-homecontent">
                      <div className="exp-hometext">
                        Our hosts offer their knowledge, tools, and behind-the-scenes access to unique work locations from wine caves to industrial studios.
                      </div>
                      <div className="exp-homeicon step1"></div>
                        <a href="#step2" className="btn btn-circle page-scroll">
                          <i className="fa fa-angle-double-down animated"></i>
                        </a>
                      </div>
                  </div>
                  <div className="col-lg-4 col-md-3 col-1-sm">&nbsp;</div>
                </div>
              </div>

              <div id="step2" className="exp-home-bg step2">
                <div className="exp-home-title">Discover New Passions</div>
                <div className="exp-homeimg step2"></div>
                <div className="exp-homequote">
                  <div className="col-lg-4 col-md-3 col-1-sm">&nbsp;</div>
                  <div className="col-lg-4 col-md-6 col-10-sm">
                    <div className="exp-homecontent">
                      <div className="exp-hometext">
                        "We are passionate professionals excited to host workshops and provide one-of-a-kind experiences."
                      </div>
                      <div className="exp-homeicon step2"></div>
                        <a href="#step3" className="btn btn-circle page-scroll">
                          <i className="fa fa-angle-double-down animated"></i>
                        </a>
                      </div>
                  </div>
                  <div className="col-lg-4 col-md-3 col-1-sm">&nbsp;</div>
                </div>
              </div>

              <div id="step3" className="exp-home-bg step3">
                <div className="exp-home-title">Share Your Experiences</div>
                <div className="exp-homeimg step3"></div>
                <div className="exp-homequote">
                  <div className="col-lg-4 col-md-3 col-1-sm">&nbsp;</div>
                  <div className="col-lg-4 col-md-6 col-10-sm">
                    <div className="exp-homecontent">
                      <div className="exp-hometext">
                        Join new friends and discover together.
                      </div>
                      <div className="exp-homeicon step3"></div>
                        <div className="final-browse" ><a href="#/browse" className="btn browseworkshops">BROWSE WORKSHOPS ></a></div>
                      </div>
                  </div>
                  <div className="col-lg-4 col-md-3 col-1-sm">&nbsp;</div>
                </div>
              </div>



            </div>
          </div>
        </section>

      </div>
    );
  }
});
