Backbone = require 'Backbone'

class LayoutView extends Backbone.View

  template: _.template(require '../templates/LayoutView.html')

  events: {}

  initialize: ->
    @$el.html @template()
    @currentPage = null

  selectTab: (tabName) ->
    logging.debug "selectTab: #{tabName}"

  showPage: (p) ->
    @currentPage?.remove()
    @$('footer').before p.render().el
    p.$el.hide().fadeIn()
    @currentPage = p

module.exports = LayoutView
