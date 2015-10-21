  ReviewForm = React.createClass({
    mixins: [React.addons.LinkedStateMixin, ReactRouter.history],

    getInitialState: function() {
      return { title: '', body: '', rating: ''};
    },


    handleSubmit: function(event) {
      event.preventDefault();

      var review = $.extend({},this.state,
        {workshop_id: this.props.workshop_id,
        });

      ApiUtil.submitReview(review);
      this.props.close();
    },

    render: function() {
      return (
        <div className="review-form">
          <form onSubmit={this.handleSubmit}  >

            <br/>
            <textarea
              valueLink={this.linkState('body')}
              defaultValue="type on type on..."></textarea>

            <label >Rating: </label>
            <input className="form-rating" type="number" valueLink={this.linkState('rating')}></input>

            <br/>
            <textarea
              valueLink={this.linkState('body')}
              defaultValue="type on type on..."></textarea>
            <br/>
            <button className="btn" type="submit">Post Review</button>
          </form>
            <button className="btn" onClick={this.props.close}>Cancel</button>
        </div>
      );
    }

  });
