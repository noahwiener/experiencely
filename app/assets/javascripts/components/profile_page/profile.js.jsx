var Profile = React.createClass({

  getInitialState: function () {
    var user = UserStore.current() || {} ;
    return { user: user, attended: [], updatemodalIsOpen: false };
  },

  componentWillMount: function() {
    window.scrollTo(0,0);
  },

  componentDidMount: function () {
    UserStore.addChangeListener(this._userChanged);
    WorkshopStore.addChangeListener(this._workshopschanged);
    ApiUtil.fetchCurrentUser();
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
                {this.state.attended.map(function(workshop) {
                 return <WorkshopsAttended key={workshop.title} user={this.state.user} workshop={workshop} />;
                }.bind(this))}
              </div>
            </div>

            <div className="row profile-reviews">
              < Reviews user={this.state.user} />
            </div>
          </div>
        </div>


      </div>



    );
  }
  }
});
