ReviewDisplayModal = React.createClass({

  handleClick: function(){
    this.props.close();
    this.props.openUpdateFormModal();
  },

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={ this.props.close } className="modal-close js-hide-modal">&times;</span>
                <div className="review-title-modal">
                  <span className="title">{this.props.review.title}</span>
                </div>
                <div className="review-body-modal-star">
                  < Stars clickable={false} rating={this.props.review.rating} size={'fa-2x'} />
                <br /><br />
                </div>
                <div className="review-body-modal">
                  <span>{this.props.review.body}</span>
                </div>
                <div>
                  <button className="btn update-review-btn" type="submit" onClick={this.handleClick}>Update Your Review</button>
                </div>

            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
