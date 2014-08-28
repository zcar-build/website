Backbone = require 'Backbone'

class LayoutView extends Backbone.View

  template: _.template(require '../templates/LayoutView.html')

  events: {}

  initialize: ->
    @$el.html @template()
    @currentPage = null

  selectTab: (tab) ->
    if tab?
      $tab = @$("li[data-tab='#{tab}']")
      $tab.siblings().removeClass('active').attr('aria-selected', 'false')
      $tab.addClass('active').attr('aria-selected', 'true')
    else
      @$('li[data-tab]').removeClass('active').attr('aria-selected', 'false')

  showPage: (p) ->
    @currentPage?.remove()
    @$('footer').before p.render().el
    @currentPage = p

module.exports = LayoutView
