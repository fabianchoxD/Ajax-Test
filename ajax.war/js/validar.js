$(document).ready(function() {
	alert("aquiiii");

	$("#txtNombre").focusout(function() {
		validar();
	});
	
	$("#botEnviar").click(function() {
		// alert('button clicked');
		validar();

	});

	function validar(){
		var nombre = document.getElementById("txtNombre").value;
		alert(nombre);
		
		$.ajax({
			type : "GET",
			url : "buscar.jsp?nombre=" + nombre,
			dataType : "xml",
			success : function(xml) {
				$(xml).find('respuesta').each(function() {
					var sTipo = $(this).find('tipo').text();
					var sMensaje = $(this).find('mensaje').text();
					alert(sTipo + "," + sMensaje);
				});
			},
			error : function() {
				alert("An error occurred while processing XML file.");
			}
		});
	}
	
});