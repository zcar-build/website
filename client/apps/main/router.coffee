Backbone = require 'Backbone'
ProductPage = require './views/ProductPage'
PrivacyPage = require './views/PrivacyPage'
PrivacyPage2 = require './views/PrivacyPage2'

class Router extends Backbone.Router

  routes:
    # Product pages
    'quiver':                 'showQuiver'
    'quiver-ios':             'showQuiveriOS'
    'bussg':                  'showBusSG'

    # Privacy policy
    'privacy':                'showPrivacyPolicy'
    'privacy2':               'showPrivacyPolicy2'

    # Default action
    '*actions':               'showQuiver'

  initialize: -> {}

  showQuiver: ->
    p = new ProductPage({product: 'quiver', el: $('#content-container')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'quiver'

  showQuiveriOS: ->
    p = new ProductPage({product: 'quiver-ios', el: $('#content-container')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'quiver-ios'

  showBusSG: ->
    p = new ProductPage({product: 'bussg', el: $('#content-container')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab 'bussg'

  
  #
  # Privacy Polcy
  #

  showPrivacyPolicy: ->
    p = new PrivacyPage({el: $('#content-container')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab(null)

  showPrivacyPolicy2: ->
    p = new PrivacyPage2({el: $('#content-container')[0]})
    $(window).scrollTop(0)
    app.layout.selectTab(null)

module.exports = Router
