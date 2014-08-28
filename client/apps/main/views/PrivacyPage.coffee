Backbone = require 'Backbone'

class PrivacyPage extends Backbone.View

  template: _.template(require '../templates/PrivacyPage.html')

  events: {}

  initialize: ->
    @$el.html @template()

  render: => @

module.exports = PrivacyPage
