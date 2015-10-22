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

                <h1>{this.props.review.title}</h1>

                <p>{this.props.review.body}</p>
                < Stars clickable={false} rating={this.props.review.rating} size={'fa-2x'} />
                <button className="btn" type="submit" onClick={this.handleClick}>Update Your Review</button>


            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
