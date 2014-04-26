Backbone = require 'Backbone'

class ProductPage extends Backbone.View

  className: 'container marketing'
  template: _.template(require '../templates/ProductPage.html')

  events: {}

  initialize: ->
    @$el.html @template()

  render: => @

module.exports = ProductPage
