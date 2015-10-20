WorkshopSignup = React.createClass({
  mixins: [ReactRouter.History],

  componentWillReceiveProps: function (props) {
  },

  _signup: function(){
    if (window.CURRENT_USER_UNAME){
      ApiUtil.signUp(this.props.workshop.id);
    } else {
      alert("please sign in to sign up for an event");
    }
  },
  render: function(){
    if (this.props.workshop.isSignedUp){
      return (<div>
                <h2>You are signed up to attend this workshop on {this.props.workshop.date}</h2>
                <div onClick={ApiUtil.cancelSignUp.bind(null, this.props.workshop.id)} className="btn signup-btn">Cancel Reservation</div>
              </div>);
    }else {
      return(<div onClick={this._signup} className="btn signup-btn">SIGN UP FOR THIS WORKSHOP</div>);
    }

}
}
);
