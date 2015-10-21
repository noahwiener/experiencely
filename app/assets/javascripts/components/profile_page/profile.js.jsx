var Profile = React.createClass({

  getInitialState: function () {
    var user = UserStore.current() || {} ;
    return { user: user };
  },

  componentWillMount: function() {
    window.scrollTo(0,0);
  },

  componentDidMount: function () {
    UserStore.addChangeListener(this._userChanged);
    ApiUtil.fetchCurrent();
    var user = UserStore.current();
    this.setState({ user: user });
  },

  _userChanged: function () {
    var user = UserStore.current();
    this.setState({ user: user });
  },

  componentWillUnmount: function (){
    UserStore.removeChangeListener(this._userChanged);
  },


  //
  // componentWillReceiveProps: function(newprops){
  //     var id = newprops.params.id;
  //     var workshop = this._findWorkshopById(id) || {} ;
  //     this.setState({ workshop: workshop });
  // },
  //
  render: function(){


    if (Object.keys(this.state.user).length === 0){
      return (<p>Your stuff is loading</p>);
    }else {
    return(
      <div className="container">

        <div className="row row-offcanvas row-offcanvas-right">
          <div className="col-xs-6 col-sm-4 sidebar-offcanvas" id="sidebar">
            < Sidebar user={this.state.user} />
          </div>

          <div className="col-xs-12 col-sm-8">
            <div className="hello">
              <h1>Hello, {this.state.user.first_name || this.state.user.user_name}!</h1>
            </div>

            <div className="row upcoming">
              <div>
                <h1>Upcoming Reservations</h1>
                {this.state.user.upcoming.map(function(workshop) {
                 return <Reservation key={workshop.title} workshop={workshop} />;
                }.bind(this))}
              </div>
            </div>

            <div className="row previous">
              <div>
                <h1>Workshops Attended</h1>
                {this.state.user.attended.map(function(workshop) {
                 return <PastWorkshop key={workshop.title} user={this.state.user} workshop={workshop} />;
                }.bind(this))}
              </div>
            </div>

            <div className="row profile-reviews">
              <div>
                <h1>Reviews</h1>
                  {this.state.user.reviews.map(function(review) {
                   return <ProfileReview key={review.workshop_id} review={review} id={review.workshop_id}/>;
                  }.bind(this))}
              </div>
            </div>
          </div>
        </div>


      </div>



    );
  }
  }
});
