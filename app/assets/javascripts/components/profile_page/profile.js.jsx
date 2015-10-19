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
    var user = ApiUtil.fetchCurrent();
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
    if (typeof (this.state.user) === 'undefined'){
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
              <h1>Hello, {this.state.user.first_name}!</h1>
            </div>
            <div className="row">
              <div className="col-xs-12 col-sm-6">
                <h2>Heading</h2>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <p><a className="btn btn-default" href="#" role="button">View details &raquo;</a></p>
              </div>
              <div className="col-xs-12 col-sm-6">
                <h2>Heading</h2>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <p><a className="btn btn-default" href="#" role="button">View details &raquo;</a></p>
              </div>
            </div>
          </div>
        </div>


      </div>



    );
  }
  }
});
