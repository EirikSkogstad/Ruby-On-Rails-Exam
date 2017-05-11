# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#toggle-search').click (e) ->
  e.preventDefault()
  $('#brand, #menu').hide()
  $('#search-form').show()
  $('#search').focus()
  return

ajaxAutoComplete
  inputId: '#search'
  ajaxUrl: 'http://www.omdbapi.com/'
