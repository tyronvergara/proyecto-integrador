var arregloCategorias = []
let arregloMarcas = []
let arregloColecciones = []

let botonEnviar = document.getElementById("botonEnviar");
let cajaAlerta = document.getElementById("alerta-caja");
let listaAlerta = document.getElementById("alerta-lista");
let textoAlerta = document.getElementById("alerta-texto");

let fileImage = document.getElementById('fileImage');
let btnFake = document.getElementById('btnFake');
let imageFile = document.getElementById('imageFile');

let imagenRuta = "";

let dropCategorias = document.getElementById("drop-categorias");
let dropMarcas = document.getElementById("drop-marcas");
let dropColecciones = document.getElementById("drop-colecciones");

let peticionCategorias = fetch('http://localhost:8080/api/categoria/todo/')
                        .then(response => response.json()
                        .then(data => data.forEach(element => {
                          dropCategorias.innerHTML += `<option value=${element.id}> ${element.nombre} </option>`
                    })))

let peticionMarca = fetch('http://localhost:8080/api/marca/todo/')
                        .then(response => response.json()
                        .then(data => data.forEach(element => {
                          dropMarcas.innerHTML += `<option value=${element.id}> ${element.nombre} </option>`
                    })))    
                
let peticionColeccion = fetch('http://localhost:8080/api/coleccion/todo/')
                .then(response => response.json()
                .then(data => data.forEach(element => {
                  dropColecciones.innerHTML += `<option value=${element.id}> ${element.nombre} </option>`
            })))


btnFake.addEventListener('click', function(){
  fileImage.click();
  });
  fileImage.addEventListener('change', () => {
      previewFile('imageFile', 'fileImage');
    });

  function previewFile(img, inputFile) {
    
    let preview = document.getElementById(img);
    let file    = document.getElementById(inputFile).files[0];
    imagenRuta = document.getElementById(inputFile).files[0].name;

    let reader  = new FileReader();

    reader.addEventListener("load", function () {
        preview.style.display="block";
        preview.src = reader.result;
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

    let skuProducto = document.getElementById("sku").value;
    let nombreProducto = document.getElementById("nombre").value;
    let descripcionProducto = document.getElementById("descripcion").value;
    let precioProducto = document.getElementById("precio").value;
    let imagenProducto = "./img/item/";
    imagenProducto += imagenRuta;

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

      let productoAgregado = {
        "sku": skuProducto,
        "nombre": nombreProducto,
        "descripcion": descripcionProducto,
        "imagen": imagenProducto,
        "precio": precioProducto,
        "categoria": {
          "id": dropCategorias.value
        },
        "coleccion": {
          "id": dropColecciones.value
        },
        "marca": {
          "id": dropMarcas.value
        },
      }

      var idProducto;

      fetch("http://localhost:8080/api/producto/agregar/", {
        method: "post",
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer: ' + localStorage.getItem("autenticacion"),
        },
          body: JSON.stringify(productoAgregado)
      })
      .then( (response) => { response.json()
      .then ( (element) => { idProducto = element.id  } )
      });

      console.log(idProducto);

      document.getElementById("nombre").value = "";
      document.getElementById("descripcion").value = "";
      document.getElementById("precio").value = "";

      window.scrollTo(0, 0);
    }
    
  }

)