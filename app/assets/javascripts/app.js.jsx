RenderJS = function() {

  var root = document.getElementById('root');
  var Route = ReactRouter.Route;
  var Router = ReactRouter.Router;
  var IndexRoute = ReactRouter.IndexRoute;

  var App = React.createClass({
    render: function(){
      return (
        <div>
          <div className="above-foot">
            < Navbar />
            {this.props.children}
          </div>
            < Footer />
        </div>
      );
    }
  });

  var routes = (
    <Route path="/" component={App}>
      <IndexRoute component={Home}/>
      <Route path="/browse" component={ListingsIndex} />
      <Route path="/profile" component={Profile} />
      <Route path="/workshops/:id" component={Workshop} />
    </Route>
  );


React.render(<Router>{routes}</Router>, root);
// Jeff suggested to wrap this in a function so that it doesn't get confused on standard application.html.erb.  How?
};
