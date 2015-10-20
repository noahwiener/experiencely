WorkshopSignup = React.createClass({
  mixins: [ReactRouter.History],

  componentWillReceiveProps: function (props) {
  },

  render: function(){
    if (this.props.workshop.isSignedUp){
      return (<div>
                <h2>You are signed up to attend this workshop on {this.props.workshop.date}</h2>
                <div onClick={ApiUtil.cancelSignUp.bind(null, this.props.workshop.id)} className="btn signup-btn">Cancel Reservation</div>
              </div>);
    }else {
      return(<div onClick={ApiUtil.signUp.bind(null, this.props.workshop.id)} className="btn signup-btn">SIGN UP FOR THIS WORKSHOP</div>);
    }

}
}
);
