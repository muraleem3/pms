# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$("#inlineCheckbox1 input:radio").click ->
  if $(this).val() is "resedentail"
    alert "Hello"
    myFunction()
  else myOtherFunction()  if $(this).val() is "2"
  return

$("input[name='types of operation']").click ->
  if $(this).val() is "resedential"
    alert "Hi"
    myFunction()
  else myOtherFunction()  if $(this).val() is "2"
  return

$("#inlineCheckbox1").on "click", ->
  alert "Hi"
  return