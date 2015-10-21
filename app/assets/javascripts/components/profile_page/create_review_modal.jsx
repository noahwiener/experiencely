CreateReviewModal = React.createClass({

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={ this.props.close } className="modal-close js-hide-modal">&times;</span>

              < ReviewForm workshop={this.props.workshop} />
              <h1>This is going to be a review form</h1>

              <p>form here</p>
              <p>Rating (out of five) </p>

            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
