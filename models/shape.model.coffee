
define [], ->
  Model = Backbone.Model.extend
    defaults:
      zIndex: 0
      posX: 0
      posY: 0
      width: 100
      height: 100
    initialize: ->
  # Static Properties
  Model.colors = [
    '#FDEDD0'
    '#BCF1ED'
    '#FF634D'
    '#FD795B'
    '#FFF0AA'
  ]
  Model.shapes =
      'SQUARE': 'square'
      'CIRCLE': 'circle'
  # Return the Object
  Model

