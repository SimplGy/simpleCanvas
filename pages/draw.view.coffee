

define ["text!./draw.tmpl.html"], (tmpl) ->
  Page = Backbone.View.extend
    className: 'drawPage'
    events:
      'click .shapePicker .pickSquare': 'onSquareClicked'
      'click .shapePicker .pickCircle': 'onCircleClicked'
    template: _.template(tmpl)
    initialize: ->
      @model = @options.app
      @listenTo @model, 'change', @render
    render: ->
      @$el.html @template @model.attributes
      @
    onSquareClicked: ->
      @options.app.set 'curShape', @options.app.shapes.SQUARE
    onCircleClicked: ->
      @options.app.set 'curShape', @options.app.shapes.CIRCLE
  Page
