Backbone = require 'Backbone'
LightBox = require './LightBox'

# Explicitly require templates so they can be bundled into one file during `muffin minify`.
require '../templates/quiver.html'
require '../templates/bussg.html'
require '../templates/sgshowtime.html'
require '../templates/hangman.html'

class ProductPage extends Backbone.View

  initialize: (options) ->
    @options = options

    productTemplate = _.template(require "../templates/#{@options.product}.html")
    @$el.html productTemplate()

    @$('.thumbnail').on 'click', ->
      lightBox = new LightBox({el: $('#modal-container')[0]})

  render: => @

module.exports = ProductPage
