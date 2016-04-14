
React = require 'react'
Immutable = require 'immutable'

ajax = require '../ajax'
locales = require '../locales'
controllers = require '../controllers'

Space = React.createFactory require 'react-lite-space'

{div, button, input, a} = React.DOM

module.exports = React.createClass
  displayName: 'bind-thirdparty'

  propTypes:
    language: React.PropTypes.string.isRequired
    showname: React.PropTypes.string.isRequired
    bindCode: React.PropTypes.string.isRequired

  getInitialState: ->
    {}

  onForceBind: ->
    ajax.unionForceBindX
      refer: 'teambition'
      data:
        bindCode: @props.bindCode
      success: (resp) =>
        controllers.signInRedirect()
      error: (err) =>
        error = JSON.parse err.response
        console.log error

  onCancel: ->
    controllers.signInRedirect()

  render: ->
    guideText = locales.get('unionAlreayBoundWhetherForceBind', @props.language)
    .replace('%s', @props.showname)

    div className: 'bind-thirdparty control-panel',
      div className: 'as-line', guideText
      Space height: 15
      div className: 'as-line-filled',
        button className: 'button is-danger', onClick: @onForceBind,
          locales.get('forceBind', @props.language)
        Space width: 35
        if @state.error
          div className: 'as-line',
            span className: 'hint-error', @state.error
            Space height: 15
        button className: 'button is-default', onClick: @onCancel,
          locales.get('cancel', @props.language)
