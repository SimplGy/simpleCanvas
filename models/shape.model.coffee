
define [], ->
  Model = Backbone.Model.extend
    defaults:
      zIndex: 0
      x: 0
      y: 0
      width: 100
      height: 100
    initialize: ->
      #Center the position
      @set 'x', @get('x') - @get('width')/2
      @set 'y', @get('y') - @get('height')/2
  # Static Properties
  Model.colors = [
    '#5B4F37'
    '#004A97'
    '#2968CC'
    '#B23624'
    '#FF634D'
    '#FD795B'
    '#FFF0AA'
    '#FDEDD0'
    '#D9FF67'
    '#12B267'
    '#4DFFAC'
    '#BCF1ED'
  ]
  Model.shapes =
      'SQUARE': 'square'
      'CIRCLE': 'circle'
  # Return the Object
  Model

