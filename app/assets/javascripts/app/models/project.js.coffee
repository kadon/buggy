class App.Models.Project extends Backbone.Model
  urlRoot: "/projects"

  #If we remove this validate function, the validation will be only on the server side
  validate: (attrs, options) ->
    errors = {}
    unless attrs.name
      errors.name = ["can't be blank"]

    unless attrs.description
      errors.description = ["can't be blank"]

    errors unless _.isEmpty errors

class App.Collections.Projects extends Backbone.Collection

  model: App.Models.Project
  
  url: "/projects"
