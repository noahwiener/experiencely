WorkshopSignup = React.createClass({
  mixins: [ReactRouter.History],

  getInitialState: function() {
    return {
      signUpModalIsOpen: false,
      signInModalIsOpen: false
    };
  },

  openSignUpModal: function() {
    this.setState({signUpModalIsOpen: true});
  },

  openSignInModal: function() {
    this.setState({signInModalIsOpen: true});
  },

  closeModal: function() {
    this.setState({signUpModalIsOpen: false});
    this.setState({signInModalIsOpen: false});
  },

  _signup: function(){
    if (window.CURRENT_USER_UNAME){
      this.openSignUpModal();
    } else {
      this.openSignInModal();
    }
  },
  render: function(){
    var modal;


    if (this.props.workshop.isSignedUp){
      return (<div>
                <div className="signup-message">You are signed up to attend this workshop on {this.props.workshop.eng_date}</div>
                <div onClick={ApiUtil.cancelSignUp.bind(null, this.props.workshop.id)} className="btn signup-btn">Cancel Reservation</div>
              </div>);
    }else {
      if (this.state.signUpModalIsOpen){
        modal = < ModalSignup close={ this.closeModal } signup={ this._signup } workshop={this.props.workshop}/>;
      }else if (this.state.signInModalIsOpen){
        modal = < ModalSignin close={ this.closeModal } signup={ this._signup } workshop={this.props.workshop} />;
      }else{
        modal = "";
      }

      return(
        <div>
          { modal }
          <div onClick={this._signup} className="btn signup-btn">SIGN UP FOR THIS WORKSHOP</div>
        </div>
      );
    }

}
}
);
