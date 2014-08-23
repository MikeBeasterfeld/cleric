# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

//= require ace/ace

$ ->
  if ( $('#contentrow').length )
    $('#contentrow').hide()

    editor = ace.edit("editor")
    editor.getSession().setMode("ace/mode/haml")

    editor.getSession().setValue($('#user_template_content').val())

    $("form").first().submit ->
      $('#user_template_content').val(editor.getSession().getValue())

  setInterval () ->
    console.log('tick')

    content = editor.getSession().getValue()
    area = $("#user_template_area").val()
    $.post(
      '/user_templates/preview.json',
      { 'area': area, 'template_content': content }, 
      (data) -> 
        $("#content_errors").html("No errors in content")
        $("#content_errors").html(data.error)
        $("#content_preview").html(data.content)

        console.log(data)
    )

  , 2000

