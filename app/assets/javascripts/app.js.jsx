$(document).ready(function(){

  var root = document.getElementById('browse');
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
      <IndexRoute component={ListingsIndex}/>
      // <Route path="/browse" component={ListingsIndex} />
    </Route>
  );

  React.render(<Router>{routes}</Router>, root);

});
