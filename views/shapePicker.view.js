// Generated by CoffeeScript 1.6.2
define(["text!./shapePicker.tmpl.html"], function(tmpl) {
  var Page;

  Page = Backbone.View.extend({
    tagName: 'li',
    className: 'dropdown shapePicker',
    template: _.template(tmpl),
    events: {
      'click .pickSquare': 'onSquareClicked',
      'click .pickCircle': 'onCircleClicked'
    },
    initialize: function() {
      return this.model = this.options.app;
    },
    render: function() {
      this.$el.html(this.template(this.model.attributes));
      return this;
    },
    onSquareClicked: function() {
      return this.options.app.set('curShape', this.options.app.shapes.SQUARE);
    },
    onCircleClicked: function() {
      return this.options.app.set('curShape', this.options.app.shapes.CIRCLE);
    }
  });
  return Page;
});
