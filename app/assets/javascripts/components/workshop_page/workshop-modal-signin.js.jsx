ModalSignin = React.createClass({

  sendSignIn: function(){
    window.location = '/account/login';
  },

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={this.props.close} className="modal-close js-hide-modal">&times;</span>
              <div className="modal-signup">
                <span>Please sign in to register for {this.props.workshop.title}</span>
              </div>
              <button className="btn" onClick={this.sendSignIn}>Sign in</button>
            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
