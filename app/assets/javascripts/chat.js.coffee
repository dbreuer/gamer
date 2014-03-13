# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class Main
  $ ->
    $("#progress").delay(2000).addClass('in')
    $(".arena:not(.init)").addClass('start')


    $(".item").on "touchstart click", (ev) ->
      ev.preventDefault()
      if $(this).hasClass("disabled") == false
        $(this).addClass('checked')
        $(this).find("input").attr("checked", 'checked')
        $(".item:not(.checked)").addClass('disabled')


window.onload = Main