Home = React.createClass({

  render: function () {
    return (
      <div className = "home">
        <header id="header" className="header">
          <div className="headercontent">
            <div className="maintitle">Discover New Passions</div>
            <div className="subtitle">Let professionals guide you in new experiences</div>
            <a href="#/browse" className="btn browseworkshops">BROWSE WORKSHOPS ></a>
          </div>
        </header>

        <section id="homepage">
          <div className="home-body">
            <div className="body-title">Explore Experiencely</div>
            <div className="body-steps">
              <div id="step1" className="exp-home-bg step1">
                <div className="exp-home-title">Learn New Skills</div>
                <div className="exp-homeimg step1"></div>
                <div className="exp-homequote">
                  <div className="col-lg-4 col-md-3 col-1-sm">&nbsp;</div>
                  <div className="col-lg-4 col-md-6 col-10-sm">
                    <div className="exp-homecontent">
                      <div className="exp-hometext">
                        "We are passionate professionals excited to host workshops and provide insider experiences in our areas of expertise"
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
                <div className="exp-home-title">Get Unparalleled Insider Access</div>
                <div className="exp-homeimg step2"></div>
                <div className="exp-homequote">
                  <div className="col-lg-4 col-md-3 col-1-sm">&nbsp;</div>
                  <div className="col-lg-4 col-md-6 col-10-sm">
                    <div className="exp-homecontent">
                      <div className="exp-hometext">
                        "We are passionate professionals excited to host workshops and provide insider experiences in our areas of expertise"
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
                <div className="exp-home-title">Share Your Experiences With Friends</div>
                <div className="exp-homeimg step3"></div>
                <div className="exp-homequote">
                  <div className="col-lg-4 col-md-3 col-1-sm">&nbsp;</div>
                  <div className="col-lg-4 col-md-6 col-10-sm">
                    <div className="exp-homecontent">
                      <div className="exp-hometext">
                        "We are passionate professionals excited to host workshops and provide insider experiences in our areas of expertise"
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
