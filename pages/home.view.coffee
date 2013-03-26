

define ["text!./home.tmpl.html"], (tmpl) ->
  Page = Backbone.View.extend
    className: 'homePage'
    template: _.template(tmpl)
    initialize: ->
    render: ->
      @$el.html @template()
      @
  Page
