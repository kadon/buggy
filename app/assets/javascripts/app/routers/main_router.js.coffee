class App.Routers.MainRouter extends Backbone.Router
    routes:
      "": "index"
      "projects": "projects"
      "projects/new": "newProject"

    newProject: ->
      console.log("newProject from routes")
      @layoutViews()
      @contentView.swapMain(new App.Views.NewProject({model: new App.Models.Project}))
      @contentView.swapSide(new App.Views.Projects({ collection: new App.Collections.Projects }))

    initialize: ->
      @headerView = new App.Views.Header()
      @contentView = new App.Views.Content()

    index: ->
      @layoutViews()
      @contentView.swapMain(new App.Views.Ads())
      @contentView.swapSide(new App.Views.News())

    projects: ->
      @layoutViews()
      @contentView.swapMain(new App.Views.Empty())
      @contentView.swapSide(new App.Views.Projects({ collection: new App.Collections.Projects }))

    layoutViews: ->
      $("#header").html(@headerView.render().el)
      $("#content").html(@contentView.render().el)

   
