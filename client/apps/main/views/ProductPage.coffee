Backbone = require 'Backbone'

# Explicitly require templates so they can be bundled into one file during `muffin minify`.
require '../templates/quiver.html'
require '../templates/bussg.html'
require '../templates/sgshowtime.html'
require '../templates/hangman.html'

class ProductPage extends Backbone.View

  initialize: (options) ->
    @options = options

  render: =>
    productTemplate = _.template(require "../templates/#{@options.product}.html")
    @$el.html productTemplate()
    @

module.exports = ProductPage
