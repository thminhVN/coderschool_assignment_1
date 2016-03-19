$(document).ready ->
	$("#list-menu").mixItUp()
	$(document).on "click", ".btn-order", ->
  		$.ajax
  			url: '/update-order'
  			type: 'POST'
  			dataType: 'json'
  			data: {menu_id: $(this).data('id')}
  			success: (data, textStatus, jqXHR) ->
  				$("#order-menu").text('ORDER (' + data.order.length + ')')
  				alert 'added to your order'