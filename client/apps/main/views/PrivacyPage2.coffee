Backbone = require 'Backbone'

class PrivacyPage2 extends Backbone.View

  template: _.template(require '../templates/PrivacyPage2.html')

  events: {}

  initialize: ->
    @$el.html @template()

  render: => @

module.exports = PrivacyPage2
