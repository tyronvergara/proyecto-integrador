let botonEnviar = document.getElementById("botonEnviar");
let cajaAlerta = document.getElementById("alerta-caja");
let listaAlerta = document.getElementById("alerta-lista");
let textoAlerta = document.getElementById("alerta-texto");

let fileImage = document.getElementById('fileImage');
let btnFake = document.getElementById('btnFake');
let imageFile = document.getElementById('imageFile');

let imagenProducto  = "";

let producto = {
  "nombre": "",
  "descripcion": "",
  "precio": 0,
  "imagen": ""
}


btnFake.addEventListener('click', function(){
  fileImage.click();
  });
  fileImage.addEventListener('change', () => {
      previewFile('imageFile', 'fileImage');
    });

  function previewFile(img, inputFile) {
    
    let preview = document.getElementById(img);
    let file    = document.getElementById(inputFile).files[0];
    let reader  = new FileReader();

    reader.addEventListener("load", function () {
        preview.src = reader.result;
        imagenProducto = reader.result;
      }, false);
    
      if (file) {
        reader.readAsDataURL(file);
      }// file
  }// previewFile 


function validarNombre(nombre){
    if (nombre.length < 2 || nombre > 100) {
      return false;
    }
    return true;
  } //validarNombre

  function validarPrecio(precio){
    if (isNaN(precio) || precio <= 0) {
      return false;
    }
    return true;
  } //validarPrecio
  
  function validarDescripcion(descripcion){
    if (descripcion.length < 2 || descripcion.length > 1000 ) {
      return false;
    }
    return true;
  }//validarMensaje

  // function validarImagen(imagen) {
  //   if (asunto.length <= 5 || asunto.length > 1000) {
  //     return false;
  //   }
  //   return true;
  // }//validarAsunto
  
botonEnviar.addEventListener("click", (event) => {
    
    event.preventDefault();

    let nombreProducto = document.getElementById("nombre").value;
    let descripcionProducto = document.getElementById("descripcion").value;
    let precioProducto = document.getElementById("precio").value;
    let listaErrores = "";

    // Validaciones...

    if ( !  (validarNombre(nombreProducto) && validarDescripcion(descripcionProducto) && validarPrecio(precioProducto) ) ) {
      
            cajaAlerta.className = "alert alert-danger alert-dismissible fade show"
            cajaAlerta.style.display="block";

            if ( ! validarNombre(nombreProducto) ) {
              listaErrores += "<li>Ingresa un nombre válido (entre 2 y 100 caracteres)</li>";
            }

            if ( ! validarDescripcion(descripcionProducto) ) {
              listaErrores += "<li>Ingresa una descripción valida</li>";
            }

            if ( ! validarPrecio(precioProducto) ) {
              listaErrores += "<li>Ingresa un precio válido</li>";
            }

            textoAlerta.innerHTML = "Se encontraron los siguientes problemas: "

            listaAlerta.innerHTML = listaErrores;

            window.scrollTo(0, 0);
    } else {

      textoAlerta.innerHTML = "¡Su producto se ha añadido correctamente!";
      listaAlerta.innerHTML = "";
      cajaAlerta.className = "alert alert-success alert-dismissible fade show";
      cajaAlerta.style.display="block";

      producto.nombre = nombreProducto;
      producto.descripcion = descripcionProducto;
      producto.precio =  precioProducto;
      producto.imagen = imagenProducto;
      
      if (localStorage.getItem("productos")) {
          let arregloProductos = JSON.parse(localStorage.getItem("productos") || "[]");
          arregloProductos.push(producto)
          localStorage.setItem("productos", JSON.stringify(arregloProductos));

      } else {
          let arreglo = [];
          arreglo.push(producto);
          localStorage.setItem("productos", JSON.stringify(arreglo));
      }
    
      
      // Regresando el formulario a datos en blanco
      document.getElementById("nombre").value = "";
      document.getElementById("descripcion").value = "";
      document.getElementById("precio").value = "";

      window.scrollTo(0, 0);
    }
    
  }

)