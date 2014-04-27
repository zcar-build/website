Backbone = require 'Backbone'

class ProductPage extends Backbone.View

  className: 'container marketing'

  events:
    'click #switcher .thumbnail': 'switchProduct'

  initialize: (@options) ->
    app.layout.selectTab(options.category)

  render: =>
    # Explicitly require templates so they can be bundled into one file during `muffin minify`.
    switch @options.category
      when 'productivity'
        categoryTemplate = _.template(require '../templates/productivity.html')
      when 'utilities'
        categoryTemplate = _.template(require '../templates/utilities.html')
      when 'education'
        categoryTemplate = _.template(require '../templates/education.html')
      when 'game'
        categoryTemplate = _.template(require '../templates/game.html')
      when 'opensource'
        categoryTemplate = _.template(require '../templates/opensource.html')

    switch @options.product
      when 'quiver'
        productTemplate = _.template(require '../templates/quiver.html')
      when 'bussg'
        productTemplate = _.template(require '../templates/bussg.html')
      when 'sgshowtime'
        productTemplate = _.template(require '../templates/sgshowtime.html')
      when 'hangman'
        productTemplate = _.template(require '../templates/hangman.html')
      when 'jumpingcarp'
        productTemplate = _.template(require '../templates/jumpingcarp.html')
      when 'muffin'
        productTemplate = _.template(require '../templates/muffin.html')

    @$el.html categoryTemplate()

    # if @$('#switcher .thumbnail').length is 1
    #   @$('#switcher').hide()

    if productTemplate?
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
