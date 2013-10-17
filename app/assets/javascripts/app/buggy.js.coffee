#= require_self
#= require_tree ./models
#= require_tree ./templates
#= require_tree ./views
#= require_tree ./routers

#Global Object
window.App =
  Routers: {}
  Views: {}
  Collections: {}
  Models: {}
  initialize: ->
    console.log "Initializing application"
    new App.Routers.MainRouter()
    Backbone.history.start()
