Backbone = require 'Backbone'

class LayoutView extends Backbone.View

  template: _.template(require '../templates/LayoutView.html')

  events: {}

  initialize: ->
    @$el.html @template()

    # Collapse the navbar on click (https://github.com/twbs/bootstrap/issues/9013#issuecomment-23590508)
    $(document).on 'click', '.navbar-collapse.in', (e) ->
      if $(e.target).is('a') then $(@).collapse('hide')

  selectTab: (tab) ->
    if tab?
      $tab = @$("li[data-tab='#{tab}']")
      $tab.siblings().removeClass('active').attr('aria-selected', 'false')
      $tab.addClass('active').attr('aria-selected', 'true')
    else
      @$('li[data-tab]').removeClass('active').attr('aria-selected', 'false')

module.exports = LayoutView
