var Profile = React.createClass({


  getInitialState: function () {
    var user = UserStore.current() || {} ;
    return { user: user, attended: [], updatemodalIsOpen: false };
  },

  componentDidMount: function () {
    UserStore.addChangeListener(this._userChanged);
    WorkshopStore.addChangeListener(this._workshopschanged);
    ApiUtil.fetchCurrentUser();
  },

  componentDidUpdate: function(prevProps, prevState) {
    if (document.getElementById("attended") && this.props.location.search === "?attended"){
      document.getElementById("attended").scrollIntoView();
    } else if (document.getElementById("attending") && this.props.location.search === "?attending"){
      document.getElementById("attending").scrollIntoView();
    } else if (document.getElementById("reviews") && this.props.location.search === "?reviews"){
      document.getElementById("reviews").scrollIntoView();
    } else{
      window.scrollTo(0,0);
    }
  },

  _userChanged: function () {
    var user = UserStore.current();
    this.setState({ user: user });
  },

  _workshopschanged: function (){
    var workshops = WorkshopStore.all();
    this.setState({ attended: workshops });
  },

  componentWillUnmount: function (){
    UserStore.removeChangeListener(this._userChanged);
    WorkshopStore.removeChangeListener(this._workshopschanged);
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
      return (<div className="spinner-loader">Loading…</div>);
    }else {

    var name;
    if (this.state.user.first_name){
      name = this.state.user.first_name;
    }else{
      name = this.state.user.user_name;
    }

    var reservations;
    if (this.state.user.upcoming.length > 0){
    reservations = this.state.user.upcoming.map(function(workshop) {
     return <Reservation key={workshop.title} workshop={workshop} />;
    }.bind(this));
    } else {
      reservations = <span>Looks like you aren't signed up for anything yet. Go ahead, try something new!</span>;
    }

    var attended;
    if (this.state.attended.length > 0){
      attended = this.state.attended.map(function(workshop) {
       return <WorkshopsAttended key={workshop.title} user={this.state.user} workshop={workshop} />;
      }.bind(this));
    }else {
      attended = <span>Looks like you've never attended one of our workshops before. Go ahead, give it a try!</span>;
    }




    if (this.state.user.upcoming.length > 0){
    reservations = this.state.user.upcoming.map(function(workshop) {
     return <Reservation key={workshop.title} workshop={workshop} />;
    }.bind(this));
    } else {
      reservations = <span>Looks like you aren't signed up for anything yet. Go ahead, try something new!</span>;
    }


    return(
      <div className="profile-total">
      <div className="container profile-main">

        <div className="row row-offcanvas row-offcanvas-right">
          <div className="col-sm-4 sidebar fixed" id="sidebar">
            < Sidebar user={this.state.user} />
          </div>

          <div className="col-sm-8 profile-main not-fixed">

                <div className="row upcoming" id="attending">
                  <div>
                    <h1>Upcoming Reservations</h1>
                    { reservations }
                  </div>
                </div>

                <div className="row previous" id="attended">
                  <div>
                    <h1>Workshops Attended</h1>
                    { attended }
                  </div>
                </div>

                <div className="row profile-reviews" id="reviews">
                  < Reviews user={this.state.user} name={name}/>
                </div>
              </div>
        </div>
      </div>
      </div>


    );
  }
  }
});
