Backbone = require 'Backbone'

class FrontPage extends Backbone.View

  template: _.template(require '../templates/FrontPage.html')

  events: {}

  initialize: ->
    @$el.html @template()
    @$('#myCarousel').carousel({pause: false})

  render: => @

module.exports = FrontPage
