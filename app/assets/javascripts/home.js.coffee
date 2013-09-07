# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#notice').animate {
    top: 0
  }, 500, ->
    setTimeout ->
      $('#notice').animate {
        top: -60
      }, 500
    , 3000
