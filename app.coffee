
define([
  'pages/draw.view'
  'pages/home.view'
  'models/app.model'
], (
  DrawView
  HomeView
  AppModel
) ->
  App = Backbone.Router.extend
    routes:
      '': 'showHome'
      'draw': 'showDraw'
    initialize: (options) ->
      @model = new AppModel() # Load in state from server or localstorage here
      @$el = $('body')
      Backbone.history.start()
    showHome: ->
      @showPage HomeView
    showDraw: ->
      @showPage DrawView
    showPage: (Page) ->
      @curView?.remove?() # Remove the current view if it exists
      @curView = new Page 'app': @model
      @$el.html @curView.render().el

  return App
)







