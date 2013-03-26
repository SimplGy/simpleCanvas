

define ['./colorPicker.tmpl.html'], (tmpl) ->
  View = Backbone.View.extend
    template: _.template tmpl
    initialize: ->
    render: ->
      @el.html @template()
      @