Backbone = require 'Backbone'
ProductPage = require './views/ProductPage'

class Router extends Backbone.Router

  routes:
    # Product pages
    'quiver':                 'showQuiver'
    'bussg':                  'showBusSG'

    # Default action
    '*actions':               'showQuiver'

  initialize: -> {}

  showQuiver: ->
    p = new ProductPage({product: 'quiver', el: $('#content-container')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'quiver'

  showBusSG: ->
    p = new ProductPage({product: 'bussg', el: $('#content-container')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'bussg'

module.exports = Router
