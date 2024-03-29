// Generated by CoffeeScript 1.6.2
define([], function() {
  var Model;

  Model = Backbone.Model.extend({
    defaults: {
      zIndex: 0,
      x: 0,
      y: 0,
      width: 100,
      height: 100
    },
    initialize: function() {
      if (this.get('shape') === Model.shapes.SQUARE) {
        this.set('x', this.get('x') - this.get('width') / 2);
        return this.set('y', this.get('y') - this.get('height') / 2);
      }
    }
  });
  Model.colors = ['#5B4F37', '#004A97', '#2968CC', '#B23624', '#FF634D', '#FD795B', '#FFF0AA', '#FDEDD0', '#D9FF67', '#12B267', '#4DFFAC', '#BCF1ED'];
  Model.shapes = {
    'SQUARE': 'square',
    'CIRCLE': 'circle'
  };
  return Model;
});
