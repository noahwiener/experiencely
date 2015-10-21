ReviewDisplayModal = React.createClass({

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={ this.props.close } className="modal-close js-hide-modal">&times;</span>

              <h1>{this.props.review.title}</h1>

              <p>{this.props.review.body}</p>
              <p>Rating (out of five) {this.props.review.rating}</p>

            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
