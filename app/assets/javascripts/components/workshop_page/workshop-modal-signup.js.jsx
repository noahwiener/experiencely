ModalSignup = React.createClass({

  getInitialState: function() {
    return { num_in_party: 1 };
  },

  add: function(){
    if (this.state.num_in_party < (this.props.workshop.max_attendees - this.props.workshop.attendees)){
      this.setState({ num_in_party: (this.state.num_in_party + 1)});
    }
  },

  subtract: function(){
    if (this.state.num_in_party > 1){
      this.setState({ num_in_party: (this.state.num_in_party - 1)});
    }
  },

  _signup: function(){
    ApiUtil.signUp(this.props.workshop.id, this.state.num_in_party);
    this.props.close();
  },

  handleInput: function (party) {
    this.setState({num_in_party : party});
  },

  render: function() {
    return (
      <div>

        <section id="modal" className="modal is-active">
            <article className="modal-content">
              <span onClick={this.props.close} className="modal-close js-hide-modal">&times;</span>

                <h1>Sign up for {this.props.workshop.title} on {this.props.workshop.date}</h1>
                <div>
                    <div className="input-group">
                              <span className="input-group-btn">
                                  <button type="button" className="btn btn-default btn-number" onClick={this.subtract}>
                                      <span className="glyphicon glyphicon-minus"></span>
                                  </button>
                              </span>
                              <input type="text" className="form-control input-number" value={this.state.num_in_party} />
                              <span className="input-group-btn">
                                  <button type="button" className="btn btn-default btn-number" data-type="plus" onClick={this.add}>
                                      <span className="glyphicon glyphicon-plus"></span>
                                  </button>
                              </span>
                            </div>
                </div>
              <button onClick={this._signup}>Sign up</button>

            </article>
            <div className="modal-screen js-hide-modal"></div>
          </section>
      </div>
    );
  }
});
