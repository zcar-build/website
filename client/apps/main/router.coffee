Backbone = require 'Backbone'
FrontPage = require './views/FrontPage'
ProductPage = require './views/ProductPage'
PrivacyPage = require './views/PrivacyPage'

class Router extends Backbone.Router

  routes:
    'home':                   'index'

    # Product pages
    'quiver':                 'showQuiver'
    'hangman':                'showHangman'
    'bussg':                  'showBusSG'
    'sgshowtime':             'showSGShowtime'

    # Privacy policy
    'privacy':                'showPrivacyPolicy'

    # Default action
    '*actions':               'index'

  initialize: -> {}

  index: ->
    p = new FrontPage({el: $('#content')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab(null)


  #
  # Product pages
  #

  showQuiver: ->
    p = new ProductPage({product: 'quiver', el: $('#content')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'quiver'

  showHangman: ->
    p = new ProductPage({product: 'hangman', el: $('#content')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'hangman'

  showBusSG: ->
    p = new ProductPage({product: 'bussg', el: $('#content')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'bussg'

  showSGShowtime: ->
    p = new ProductPage({product: 'sgshowtime', el: $('#content')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'sgshowtime'


  #
  # Privacy Polcy
  #

  showPrivacyPolicy: ->
    p = new PrivacyPage({el: $('#content')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab(null)

module.exports = Router
