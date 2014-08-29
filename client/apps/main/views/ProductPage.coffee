Backbone = require 'Backbone'

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
      $('#myModal').modal {show: true}
      $('.modal-body').html """
        <img src="images/quiver/screenshot1.jpg" alt="">
      """

  render: => @

module.exports = ProductPage
