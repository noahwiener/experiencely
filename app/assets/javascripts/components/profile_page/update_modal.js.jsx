UpdateModal = React.createClass({

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={ this.props.close } className="modal-close js-hide-modal">&times;</span>

                <h1>Update Your Review of {this.props.workshop.title}</h1>

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
