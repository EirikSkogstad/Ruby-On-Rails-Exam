# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Initialize materialize modal
$('#login-modal').modal()
$('#logout-modal').modal()

# Open login modal
$('#login').click (e) ->
  e.preventDefault()
  $('#login-modal').modal('open')
  return

$('#logout').click (e) ->
  e.preventDefault()
  $('#logout-modal').modal('open')
  return

# Show searchbar
$('#toggle-search').click (e) ->
  e.preventDefault()
  $('#brand, #menu').hide()
  $('#search-form').show()
  $('#search').focus()
  return

ajaxAutoComplete
  inputId: '#search'
  ajaxUrl: 'http://www.omdbapi.com/'
  data: { apikey:'ca17ed8a' }
