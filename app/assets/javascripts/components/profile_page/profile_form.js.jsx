ProfileForm = React.createClass({
  mixins: [React.addons.LinkedStateMixin, ReactRouter.history],

  getInitialState: function() {
    return { user_name: this.props.user.user_name, first_name: this.props.user.first_name, last_name: this.props.user.last_name, about_me: this.props.user.about_me};
  },


  handleSubmit: function(event) {
    event.preventDefault();

    var profile_params = {user_id: this.props.user.id};

    Object.keys(this.state).forEach(function(key) {
        profile_params[key] = this.state[key];
    }.bind(this));

    ApiUtil.updateProfile(profile_params);

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
            <label htmlFor='user_name'>Email</label>
            <input type='text'
                   className='form-control'
                   value={this.state.user_name}
                   placeholder={this.props.user.user_name}
                   onChange={this.handleInput.bind(null, 'user_name')}/>
          </div>

          <div className='form-group'>
            <label htmlFor='first_name'>First Name</label>
            <input type='text'
                   className='form-control'
                   value={this.state.first_name}
                   placeholder={this.props.user.first_name || "First Name"}
                   onChange={this.handleInput.bind(null, 'first_name')}/>
          </div>

          <div className='form-group'>
            <label htmlFor='last_name'>Last Name</label>
            <input type='text'
                   className='form-control'
                   value={this.state.last_name}
                   placeholder={this.props.user.last_name || "Last Name"}
                   onChange={this.handleInput.bind(null, 'last_name')}/>
          </div>

          <div className='form-group'>
            <label htmlFor='about_me'>About Me</label>
            <textarea
                   className='form-control'
                   value={this.state.about_me}
                   placeholder={this.props.user.about_me || "Tell us about yourself"}
                   onChange={this.handleInput.bind(null, 'about_me')}/>
          </div>

          <button className="btn" type="submit">Update Profile</button>
        </form>
          <button className="btn" onClick={this.props.close}>Cancel</button>
      </div>
    );
  }

});
