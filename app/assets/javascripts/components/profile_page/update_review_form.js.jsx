UpdateReviewForm = React.createClass({
  mixins: [React.addons.LinkedStateMixin, ReactRouter.history],

  getInitialState: function() {
    return { title: this.props.title || '', body: this.props.body || '', rating: this.props.rating || 3};
  },

  handleRating: function(idx){
    this.setState({ rating: idx });
  },

  handleSubmit: function(event) {
    event.preventDefault();

    var review_params = {workshop_id: this.props.workshop_id, user_id: this.props.user.id};

    Object.keys(this.state).forEach(function(key) {
        review_params[key] = this.state[key];
    }.bind(this));

    ApiUtil.updateReview(review_params);

    this.props.close();
  },

  handleInput: function (param, e) {
    var update = {};
    update[param] = e.target.value;
    this.setState(update);
  },

  render: function() {
    return (
      <div className="review-form">
        <form onSubmit={this.handleSubmit}  >

          <div className='form-group'>
            <label htmlFor='rating'>Rating (click to update)</label>
            < Stars clickable={true} rating={this.state.rating} size={'fa-3x'} clickHandler={this.handleRating} />
            <br />
          </div>

          <div className='form-group'>
            <label htmlFor='title'>Title</label>
            <input type='text'
                   className='form-control'
                   value={this.state.title}
                   placeholder="Title"
                   onChange={this.handleInput.bind(null, 'title')}/>
          </div>

          <div className='form-group'>
            <label htmlFor='body'>Body</label>
            <input type='text'
                   className='form-control'
                   value={this.state.body}
                   placeholder="Describe the workshop"
                   onChange={this.handleInput.bind(null, 'body')}/>
          </div>

          <button className="btn update-review-btn" type="submit">Post Review</button>
        </form>
          <button className="btn update-review-btn" onClick={this.props.close}>Cancel</button>
      </div>
    );
  }

});
