# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'click', 'form .remove_fields', (event)->
  $(this).prev('input[type=hidden]').val('1')
  $(this).closest('#field').remove()
  event.preventDefault()