# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

//= require ace/ace
//= require ace/ext-statusbar

$ ->
  if ( $('#templatecontentrow').length )
    $('#templatecontentrow').hide()

    editor = ace.edit("editor")
    StatusBar = ace.require("ace/ext/statusbar").StatusBar
    statusBar = new StatusBar(editor, document.getElementById("statusBar"))

    editor.getSession().setMode("ace/mode/haml")
    editor.getSession().setTabSize(2)

    editor.getSession().setValue($('#user_template_content').val())

    $("form").first().submit ->
      $('#user_template_content').val(editor.getSession().getValue())

  setInterval () ->
    session = editor.getSession()
    content = session.getValue()
    area = $("#user_template_area").val()
    $.post(
      '/user_templates/preview.json',
      { 'area': area, 'template_content': content }, 
      (data) -> 
        session.clearBreakpoints()

        if data.error
          $("#statusmessage").html(data.error)
          session.setBreakpoint((data.line - 1), 'ace_error')
          session.setAnnotation((data.line - 1), data.error)
        else
          $("#content_preview").html(data.content)
          $("#statusmessage").html("No errors")

    )

  , 2000

