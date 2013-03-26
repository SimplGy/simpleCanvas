


define ["text!./colorPicker.tmpl.html"], (tmpl) ->

  Page = Backbone.View.extend
    tagName: 'li'
    className: 'dropdown colorPicker'
    template: _.template(tmpl)
    events:
      'click .dropdown-menu a': 'onColorClick'

    initialize: ->
      @model = @options.app
      @model.attributes.colors = @options.app.colors

    render: ->
      @$el.html @template @model.attributes
      @

    onColorClick: (e) ->
      color = $(e.target).data('color')
      @options.app.set 'curColor', color

  Page



