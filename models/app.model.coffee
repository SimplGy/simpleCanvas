
define ['./shape.model'], (ShapeModel) ->
  Model = Backbone.Model.extend
    defaults: ->
      'curShape': ShapeModel.shapes.SQUARE
      'curColor': ShapeModel.colors[1]
    initialize: ->
      @colors = ShapeModel.colors
      @shapes = ShapeModel.shapes
  Model