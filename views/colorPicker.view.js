// Generated by CoffeeScript 1.6.2
define(["text!./colorPicker.tmpl.html"], function(tmpl) {
  var Page;

  Page = Backbone.View.extend({
    tagName: 'li',
    className: 'dropdown colorPicker',
    template: _.template(tmpl),
    events: {
      'click .dropdown-menu a': 'onColorClick'
    },
    initialize: function() {
      this.model = this.options.app;
      return this.model.attributes.colors = this.options.app.colors;
    },
    render: function() {
      this.$el.html(this.template(this.model.attributes));
      return this;
    },
    onColorClick: function(e) {
      var color;

      color = $(e.target).data('color');
      return this.options.app.set('curColor', color);
    }
  });
  return Page;
});
