

define [
  'text!./draw.tmpl.html'
  'views/shapePicker.view'
  'views/colorPicker.view'
  'models/shape.model'
], (tmpl, ShapePicker, ColorPicker, ShapeModel) ->

  Page = Backbone.View.extend
    className: 'drawPage'
    template: _.template(tmpl)
    events:
      'click canvas': 'addShape'

    initialize: ->
      @model = @options.app
      @shapes = new Backbone.Collection()
      @listenTo @model, 'change', @render
      @listenTo @shapes, 'add', @render

    render: ->
      @$el.html @template @model.attributes
      # Build the views for the pickers and put them in this view
      @pickShape = new ShapePicker
        'app': @options.app
      @pickColor = new ColorPicker
        'app': @options.app
      $Pickers = @$ '#Pickers'
      $Pickers.append @pickColor.render().el
      $Pickers.append @pickShape.render().el
      @renderShapes()
      @

    renderShapes: ->
      ctx = @$('canvas')[0].getContext('2d')
      shapes = @options.app.shapes
      @shapes.each (shape) =>
        s = shape.attributes
        switch s.shape
          when shapes.CIRCLE then @drawCircle ctx, s
          when shapes.SQUARE then @drawRect ctx, s
          else console.error 'unknown shape'

    drawRect: (ctx, shape) ->
      ctx.fillStyle = shape.color
      ctx.fillRect shape.x, shape.y, shape.width, shape.height

    drawCircle: (ctx, shape) ->
      ctx.fillStyle = shape.color
      ctx.beginPath()
      ctx.arc shape.x, shape.y, shape.width/2, 0, Math.PI*2, true
      ctx.closePath()
      ctx.fill()

    addShape: (e) ->
      offset = @$('canvas').offset() # The offset of the canvas element from the browser frame
      newShape = new ShapeModel
        x: e.clientX - offset.left
        y: e.clientY - offset.top
        color: @model.attributes.curColor
        shape: @model.attributes.curShape
      @shapes.add newShape

  Page






