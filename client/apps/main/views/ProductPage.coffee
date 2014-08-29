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

    images = @$('.thumbnail img').map(-> $(this).attr('src')).get()
    @$('.thumbnail').on 'click', (e) ->
      lightBox = new LightBox({el: $('#modal-container')[0]})
      index = $(e.currentTarget).closest('.col-md-4').index()
      console.log index
      lightBox.showAlbum(images, index)

  render: => @

module.exports = ProductPage
