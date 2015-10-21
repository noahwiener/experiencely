ProfileModal = React.createClass({

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={ this.props.close } className="modal-close js-hide-modal">&times;</span>

                <h1>Hi {this.props.user.user_name}</h1>

              < ProfileForm close={this.props.close} user={this.props.user} />


            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
