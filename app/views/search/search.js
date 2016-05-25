$('#search').change(function() {
  $.ajax({
  	type: POST,
  	url: '/search',
  	data: q,
  	success: function (data) {
  	  console.log(data);
  	},
  }
  });
});