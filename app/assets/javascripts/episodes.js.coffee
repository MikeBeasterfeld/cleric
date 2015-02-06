# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

//= require ace/ace
//= require ace/ext-statusbar

$ ->
  if ( $('#contentrow').length )
    $('#contentrow').hide()

    last_change = new Date().getTime()

    editor = ace.edit("editor")
    StatusBar = ace.require("ace/ext/statusbar").StatusBar
    statusBar = new StatusBar(editor, document.getElementById("statusBar"))

    editor.getSession().setMode("ace/mode/markdown")
    editor.getSession().setTabSize(2)
    editor.getSession().setUseWrapMode(true);

    editor.getSession().setValue($('#episode_notes').val())

    $("form").first().submit ->
      $('#episode_notes').val(editor.getSession().getValue())

    editor.on "change", ->
      last_change = new Date().getTime()

  setInterval () ->
    current_time = new Date().getTime()

    if last_change < (current_time - 1000) && last_change > (current_time - 3000)
      last_change = last_change - 1000
      console.log('updating')
      session = editor.getSession()
      content = session.getValue()
      $.post(
        '/episodes/preview.json',
        { 'content': content }, 
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

  , 1000
