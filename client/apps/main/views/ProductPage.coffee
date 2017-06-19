Backbone = require 'Backbone'
LightBox = require './LightBox'

# Explicitly require templates so they can be bundled into one file during `muffin minify`.
require '../templates/quiver.html'
require '../templates/quiver-ios.html'
require '../templates/bussg.html'

class ProductPage extends Backbone.View

  initialize: (options) ->
    @options = options

    productTemplate = _.template(require "../templates/#{@options.product}.html")
    @$el.html productTemplate()

    images = @$('.thumbnail img').map(-> $(this).attr('src')).get()
    @$('.thumbnail').on 'click', (e) ->
      $('#modal-container').off().empty()
      lightBox = new LightBox({el: $('#modal-container')[0]})
      index = $(e.currentTarget).closest('.col-md-4').index()
      lightBox.showAlbum(images, index)

    @$('.download').on 'click', (e) ->
      label = $(e.currentTarget).attr('data-value')
      ga 'send', 'event', 'button', 'click', label

  render: => @

module.exports = ProductPage
