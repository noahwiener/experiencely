ReviewForm = React.createClass({
  mixins: [React.addons.LinkedStateMixin, ReactRouter.history],

  getInitialState: function() {
    return { title: '', body: '', rating: ''};
  },


  handleSubmit: function(event) {
    event.preventDefault();

    var review_params = {workshop_id: this.props.workshop.id, user_id: this.props.user.id};

    Object.keys(this.state).forEach(function(key) {
        review_params[key] = this.state[key];
    }.bind(this));

    ApiUtil.submitReview(review_params);

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
            <label htmlFor='title'>Title</label>
            <input type='text'
                   className='form-control'
                   value={this.state.title}
                   placeholder="Title"
                   onChange={this.handleInput.bind(null, 'title')}/>
          </div>

          <div className='form-group'>
            <label htmlFor='rating'>Rating</label>
            <input type='text'
                   className='form-control'
                   value={this.state.rating}
                   placeholder="Value from 1-5"
                   onChange={this.handleInput.bind(null, 'rating')}/>
          </div>

          <div className='form-group'>
            <label htmlFor='body'>Body</label>
            <input type='text'
                   className='form-control'
                   value={this.state.body}
                   placeholder="Describe the workshop"
                   onChange={this.handleInput.bind(null, 'body')}/>
          </div>

          <button className="btn" type="submit">Post Review</button>
        </form>
          <button className="btn" onClick={this.props.close}>Cancel</button>
      </div>
    );
  }

});
