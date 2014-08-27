Backbone = require 'Backbone'
require 'components/twbs/bootstrap/dist/js/bootstrap.js'

start = ->
  window.apps = {}

  # Create the base app
  BaseApp = require '../base/app'
  apps.base = new BaseApp()
  apps.base.initialize()

  # Create the main app
  MainApp = require './app'
  window.app = apps.main = new MainApp()
  apps.main.initialize()

  # Start dispatching routes
  apps.main.createRouter()
  Backbone.history.start()

module.exports = start
