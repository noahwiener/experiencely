Sidebar = React.createClass({
  render: function(){
    return (
      <div>
      <p>this will be the sidebar</p>
      <p>Hi {window.CURRENT_USER.first_name}</p>
      <p><button onClick={ApiUtil.signOut}>Log Out</button></p>
    </div>
  );
  }
});
