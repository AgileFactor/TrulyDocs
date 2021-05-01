<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>;

//<script src="https://code.jquery.com/jquery-3.5.1.js"></script>;

// Vai buscar a modal
var modal = document.getElementById("myModal");

// Botão da modal
var btn = document.getElementById("createFile");

// Criação do botão para depois fechar a modal
var span = document.getElementsByClassName("close")[0];

// Abrir a modal
btn.onclick = function() {
  modal.style.display = "block";
}

// Quando se clica no x da modal fecha
span.onclick = function() {
  modal.style.display = "none";
}

// Quando carregar fora da modal fecha.
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

$('form.ajax').on('submit', function() {
	var isto = $(this),
		url = that.attr('action'),
		type = that.attr('method'),
		data = {};
	
	that.find('[name]').each(function(index,value){
		var isto = $(this),
			name = that.attr('name'),
			value = that.val();
			
		data[name] = value;
	});
	
	$.ajax({
		url: url,
		type: type,
		data: data,
		success: function(response){
			console.log(response);
		}
	});
	
	return false;
});




//$.ajax('/jquery/submitData', {
//	type: 'POST',
//	data: {},
//	success: function (data, status, xhr){
//		$('p').append('status: ' + status + ', data: ' + data);
//	},
//	error: function (jqXhr, textStatus, errorMessage){
//		$('p').append('Error' + errorMessage);
//	}
//});

