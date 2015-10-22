Stars = React.createClass({
    //Takes clickable boolean
    //Takes rating
    // takes size, eg: 'fa-1x'
    // takes clickhandler

  componentWillMount: function() {
    this.size = this.props.size;
    this.half = (<li><i className={"fa fa-star-half-o " + this.size}></i></li>);
    this.full = (<li><i className={"fa fa-star " + this.size}></i></li>);
    this.empty = (<li><i className={"fa fa-star-o " + this.size}></i></li>);
  },

  showClickable: function() {
    this.stars = [];
    for (var i = 1; i <= 5; i++) {
      var click = this.props.clickHandler.bind(null, i);
      if (i <= this.props.rating) {
        this.stars.push(<li onClick={click}><i className="fa fa-star fa-2x filled"></i></li>);
      } else {
        this.stars.push(<li onClick={click}><i className="fa fa-star-o fa-2x unfilled"></i></li>);
      }
    }
  },

  showFixed: function() {
    this.stars = [];
    var completes = 0;
    var halves;
    if (this.props.rating % 1 === 0) {
      completes = this.props.rating;
      halves = 0;
    } else {
      completes = this.props.rating - 0.5;
      halves = 1;
    }

    for (var i = 0; i < completes; i++){
        this.stars.push(this.full);}

    for (var j = 0; j < halves; j++){
        this.stars.push(this.half);}

    for (var k = 0; k < (5 - (completes + halves)); k++){
        this.stars.push(this.empty);}
  },


  render: function() {
    if (this.props.clickable) {
      this.showClickable();
    } else {
      this.showFixed();
    }
      return (<ul className='star-bar'>{this.stars}</ul>);
    }
  });
