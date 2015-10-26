CreateReviewModal = React.createClass({

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={ this.props.close } className="modal-close js-hide-modal">&times;</span>

                <span>Review </span><span className="title">{this.props.workshop.title}</span>

              < ReviewForm close={this.props.close} workshop={this.props.workshop} user={this.props.user} />


            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
