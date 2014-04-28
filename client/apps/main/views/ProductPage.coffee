Backbone = require 'Backbone'

# Explicitly require templates so they can be bundled into one file during `muffin minify`.
require '../templates/quiver.html'
require '../templates/bussg.html'
require '../templates/sgshowtime.html'
require '../templates/hangman.html'
require '../templates/muffin.html'

class ProductPage extends Backbone.View

  className: 'container marketing'
  template: _.template('<div id="productarea"></div>')

  initialize: (@options) ->
    app.layout.selectTab(options.category)
    @$el.html @template()

  render: =>
    productTemplate = _.template(require "../templates/#{@options.product}.html")
    @$('#productarea').html productTemplate()
    @

module.exports = ProductPage
