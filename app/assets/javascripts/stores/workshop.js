(function(root) {
  'use strict';

  var _workshops = [];

  root.WorkshopStore = $.extend({}, EventEmitter.prototype, {
    all: function(){
      return _workshops.slice();
    }
  });

}(this));
