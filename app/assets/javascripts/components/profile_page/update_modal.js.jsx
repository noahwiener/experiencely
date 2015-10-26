UpdateModal = React.createClass({

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={ this.props.close } className="modal-close js-hide-modal">&times;</span>

                <span>Update your review of </span><span className="title">{this.props.workshop.title}</span>

                < UpdateReviewForm close={this.props.close}
                                    workshop={this.props.workshop}
                                    workshop_id={this.props.workshop_id}
                                    user={this.props.user}
                                    rating= {this.props.review.rating}
                                    title= {this.props.review.title}
                                    body= {this.props.review.body}
                                    />


            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
