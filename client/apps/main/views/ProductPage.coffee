Backbone = require 'Backbone'

# Explicitly require templates so they can be bundled into one file during `muffin minify`.
require '../templates/quiver.html'
require '../templates/bussg.html'
require '../templates/sgshowtime.html'
require '../templates/hangman.html'
require '../templates/muffin.html'

class ProductPage extends Backbone.View

  className: 'container marketing'

  initialize: (@options) ->
    app.layout.selectTab(options.category)

  render: =>
    productTemplate = _.template(require "../templates/#{@options.product}.html")
    @$el.html productTemplate()
    @

module.exports = ProductPage
