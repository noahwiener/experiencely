RenderJS = function() {

  var root = document.getElementById('root');
  var Route = ReactRouter.Route;
  var Router = ReactRouter.Router;
  var IndexRoute = ReactRouter.IndexRoute;

  var App = React.createClass({
    render: function(){
      return (
        <div>
          <header><h1>Experiencely</h1></header>
          {this.props.children}
        </div>
      );
    }
  });

  var routes = (
    <Route path="/" component={App}>
      <IndexRoute component={Home}/>
      <Route path="/browse" component={ListingsIndex} />
    </Route>
  );


React.render(<Router>{routes}</Router>, root);
// Jeff suggested to wrap this in a function so that it doesn't get confused on standard application.html.erb.  How?
};
