ModalSignin = React.createClass({

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={this.props.close} className="modal-close js-hide-modal">&times;</span>

                <h1>Please sign in to register for {this.props.workshop.title}</h1>

              <button onClick={window.location = '/account/login'}>Sign in</button>
            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
