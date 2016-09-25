Backbone = require 'Backbone'
FrontPage = require './views/FrontPage'
ProductPage = require './views/ProductPage'

class Router extends Backbone.Router

  routes:
    'home':                   'index'

    # Product pages
    'quiver':                 'showQuiver'
    'bussg':                  'showBusSG'

    # Default action
    '*actions':               'index'

  initialize: -> {}

  index: ->
    p = new FrontPage({el: $('#content-container')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab(null)


  #
  # Product pages
  #

  showQuiver: ->
    p = new ProductPage({product: 'quiver', el: $('#content-container')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'quiver'

  showBusSG: ->
    p = new ProductPage({product: 'bussg', el: $('#content-container')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'bussg'

module.exports = Router
