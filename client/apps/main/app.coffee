#
# Main App
#

LayoutView = require './views/LayoutView'
Router = require './router'

class App

  initialize: ->
    # Mixin Backbone.Events
    _.extend @, Backbone.Events

    # Set up application layout
    @layout = new LayoutView {el: 'body'}

  createRouter: ->
    @router = new Router()

module.exports = App
