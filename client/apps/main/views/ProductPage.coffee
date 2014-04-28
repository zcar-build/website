Backbone = require 'Backbone'

# Explicitly require templates so they can be bundled into one file during `muffin minify`.
require '../templates/productivity.html'
require '../templates/utilities.html'
require '../templates/education.html'
require '../templates/opensource.html'
require '../templates/quiver.html'
require '../templates/bussg.html'
require '../templates/sgshowtime.html'
require '../templates/hangman.html'
require '../templates/muffin.html'

class ProductPage extends Backbone.View

  className: 'container marketing'

  events:
    'click #switcher .thumbnail': 'switchProduct'

  initialize: (@options) ->
    app.layout.selectTab(options.category)

  render: =>
    categoryTemplate = _.template(require "../templates/#{@options.category}.html")
    @$el.html categoryTemplate()
    @$('#switcher').hide() if @$('#switcher .thumbnail').length is 1

    if @options.product?
      productTemplate = _.template(require "../templates/#{@options.product}.html")
      @$('#productarea').html productTemplate()
    else
      @$('#switcher .thumbnail:first').click()
    @

  switchProduct: (e) =>
    $thumbnail = $(e.currentTarget)
    $thumbnail.siblings().removeClass('active')
    $thumbnail.addClass('active')

    product = $thumbnail.attr('data-product')
    productTemplate = _.template(require "../templates/#{product}.html")
    @$('#productarea').html productTemplate()

module.exports = ProductPage
