Profile = React.createClass({
  render: function(){

    if (window.CURRENT_USER){
      x = <a href="/">{window.CURRENT_USER.first_name || window.CURRENT_USER.user_name}</a>;
    }else{
      x=<a href="/account/login">THIS ISN'T WORKING---ADD REDIRECT</a>;
    }

    return(
      <div>Hi {x}. Let's add some sign out logic here!
        <button onClick={ApiUtil.signOut}>Log Out</button>
      </div>
    );

  }

});
