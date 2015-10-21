CreateReviewModal = React.createClass({

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={ this.props.close } className="modal-close js-hide-modal">&times;</span>

                <h1>Review {this.props.workshop.title}</h1>

              < ReviewForm close={this.props.close} workshop={this.props.workshop} user={this.props.user} />


            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
