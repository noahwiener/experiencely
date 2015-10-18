var Profile = React.createClass({

  // getInitialState: function () {
  //   var id = this.props.params.id;
  //   var workshop = this._findWorkshopById(id) || {} ;
  //   return { workshop: workshop };
  // },
  // _findWorkshopById: function (id) {
  //   var result;
  //    WorkshopStore.all().forEach(function (workshop) {
  //     if (id == workshop.id) {
  //       result = workshop;
  //     }
  //   }.bind(this));
  //    return result;
  // },
  //
  // componentWillMount: function() {
  //   window.scrollTo(0,0);
  // },
  //
  // componentDidMount: function () {
  //   WorkshopStore.addChangeListener(this._workshopChanged);
  //   ApiUtil.fetchWorkshops();
  // },
  //
  // componentWillUnmount: function (){
  //   WorkshopStore.removeChangeListener(this._workshopChanged);
  // },
  //
  // componentWillReceiveProps: function(newprops){
  //     var id = newprops.params.id;
  //     var workshop = this._findWorkshopById(id) || {} ;
  //     this.setState({ workshop: workshop });
  // },
  //
  // _workshopChanged: function () {
  //   var id = this.props.params.id;
  //   var workshop = this._findWorkshopById(id);
  //   this.setState({ workshop: workshop });
  // },
  render: function(){

    if (window.CURRENT_USER){
      x = <span>{window.CURRENT_USER.first_name || window.CURRENT_USER.user_name}</span>;
    }else{
      x=<a href="/account/login">THIS ISN'T WORKING---ADD REDIRECT</a>;
    }

    return(
      <div className="container">

        <div className="row row-offcanvas row-offcanvas-right">

          <div className="col-xs-6 col-sm-4 sidebar-offcanvas" id="sidebar">
            < Sidebar />
          </div>

          <div className="col-xs-12 col-sm-8">
            <div className="hello">
              <h1>Hello, {window.CURRENT_USER.first_name}!</h1>
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
});
