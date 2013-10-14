#= require_self
#= require_tree ./routers

#Global Object
window.App =
  Routers: {}
  initialize: ->
    console.log "Initializing application"
    new App.Routers.MainRouter()
    Backbone.history.start()
