

define [
  'text!./draw.tmpl.html'
  'views/shapePicker.view'
  'views/colorPicker.view'
], (tmpl, ShapePicker, ColorPicker) ->

  Page = Backbone.View.extend
    className: 'drawPage'
    template: _.template(tmpl)

    initialize: ->
      @model = @options.app

      @listenTo @model, 'change', @render

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
      @

  Page
