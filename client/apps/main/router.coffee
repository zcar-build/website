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
    p = new FrontPage()
    app.layout.selectTab(null)
    app.layout.showPage(p)


  #
  # Product pages
  #

  showQuiver: ->
    p = new ProductPage({product: 'quiver'})
    app.layout.selectTab 'quiver'
    app.layout.showPage(p)

  showHangman: ->
    p = new ProductPage({product: 'hangman'})
    app.layout.selectTab 'hangman'
    app.layout.showPage(p)

  showBusSG: ->
    p = new ProductPage({product: 'bussg'})
    app.layout.selectTab 'bussg'
    app.layout.showPage(p)

  showSGShowtime: ->
    p = new ProductPage({product: 'sgshowtime'})
    app.layout.selectTab 'sgshowtime'
    app.layout.showPage(p)

module.exports = Router
