Backbone = require 'Backbone'
FrontPage = require './views/FrontPage'
ProductPage = require './views/ProductPage'

class Router extends Backbone.Router

  routes:
    'home':                   'index'

    # Product pages
    'quiver':                 'showQuiver'
    'hangman':                'showHangman'
    'bussg':                  'showBusSG'
    'sgshowtime':             'showSGShowtime'

    # Default action
    '*actions':               'index'

  initialize: -> {}

  index: ->
    p = new FrontPage({el: $('.content-area')[0]})
    app.layout.selectTab(null)


  #
  # Product pages
  #

  showQuiver: ->
    p = new ProductPage({product: 'quiver', el: $('.content-area')[0]})
    app.layout.selectTab 'quiver'

  showHangman: ->
    p = new ProductPage({product: 'hangman', el: $('.content-area')[0]})
    app.layout.selectTab 'hangman'

  showBusSG: ->
    p = new ProductPage({product: 'bussg', el: $('.content-area')[0]})
    app.layout.selectTab 'bussg'

  showSGShowtime: ->
    p = new ProductPage({product: 'sgshowtime', el: $('.content-area')[0]})
    app.layout.selectTab 'sgshowtime'

module.exports = Router
