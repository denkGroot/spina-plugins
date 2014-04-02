#= require spina/openinghours/jquery.formatter

ready = ->
  $('.openinghours-start input, .openinghours-end input').each ->
    $(this).formatter
      'pattern': '{{99}}:{{99}}'

$(document).on 'ready page:load', ready