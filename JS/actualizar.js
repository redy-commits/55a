function cargarEditorial() {
    edit = ref_editorial.value;
    $("#listaEditorial").val(edit);
};


function actualizar_ajax(){
	//capturar los datos 
	var id_val = id.value;
	var isbn_val = isbn.value;
	var titulo_val = titulo.value;
	var autor_val = autor.value;
	var editorial_val = listaEditorial.value;
	var fecha_val = fechaPublicacion.value;

	//enviar los datos al update.jsp donde hace la actualizacion
	$.ajax({
		type: "POST",
		url: "update.jsp",
		data: {
			id:id_val,
			isbn:isbn_val,
			titulo: titulo_val,
			autor: autor_val,
			editorial:editorial_val,
			fecha: fecha_val
		},
		success: function(msg) {
			Toastify({text: "Se redireccinará a la página de inicio",duration: 3500}).showToast();
			Toastify({
				text: "Se actualizó correctamente el libro",
				backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)",
				close: true,duration: 4500
			}).showToast();

			setTimeout(function() {
				window.location.replace("index.jsp");
			}, 5000);
			console.log("correcto");
			
		},
		error:function (xhr, ajaxOptions, thrownError){
			Toastify({
				text: "Ocurrió un error al intentar actualizar",
				backgroundColor: "linear-gradient(to right, #CA3819, #DEA194)",duration: 4000
			}).showToast();

			console.log("error");
		}  
	});
	
}



window.onload = setTimeout(cargarEditorial, 0);