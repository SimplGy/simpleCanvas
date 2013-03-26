


define ["text!./shapePicker.tmpl.html"], (tmpl) ->

  Page = Backbone.View.extend
    tagName: 'li'
    className: 'dropdown shapePicker'
    template: _.template(tmpl)
    events:
      'click .pickSquare': 'onSquareClicked'
      'click .pickCircle': 'onCircleClicked'

    initialize: ->
      @model = @options.app

    render: ->
      @$el.html @template @model.attributes
      @

    onSquareClicked: ->
      @options.app.set 'curShape', @options.app.shapes.SQUARE
    onCircleClicked: ->
      @options.app.set 'curShape', @options.app.shapes.CIRCLE

  Page
