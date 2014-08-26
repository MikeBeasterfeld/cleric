# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

//= require ace/ace
//= require ace/ext-statusbar

$ ->
  if ( $('#stylesheetcontentrow').length )
    $('#stylesheetcontentrow').hide()

    editor = ace.edit("editor")

    StatusBar = ace.require("ace/ext/statusbar").StatusBar
    statusBar = new StatusBar(editor, document.getElementById("statusBar"))

    editor.getSession().setMode("ace/mode/css")
    editor.getSession().setTabSize(2)

    editor.getSession().setValue($('#stylesheet_content').val())

    $("form").first().submit ->
      $('#stylesheet_content').val(editor.getSession().getValue())

