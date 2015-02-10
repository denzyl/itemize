# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    console.log(this);

    container = document.getElementsByClassName('row_index')
    console.log(container)
    lastchild = container[container.length-1].innerHTML
    console.log(lastchild)
    new_index = parseInt(lastchild) + 1
    #time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')

    $('tr.item_table_row:last').after($(this).data('fields').replace(regexp, new_index))
    $(".first_input").find("input").focus();
    event.preventDefault()

  $('form').on 'blur', '.item_cost_field', (event) ->
    value1 = $('td.item_quantity_field input').val()
    value2 = $('td.item_cost_field input').val()
    value3 = value1 * value2
    console.log(value3)
    $('td.item_total_cost_field input').val(value3)
    event.preventDefault()


$(document).ready(ready)
$(document).on('page:load', ready)



