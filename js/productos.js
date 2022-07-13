function agregaProducto(producto){
    const itemHTML =    
    `
    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12 mb-2">
      <div class="card text-center h-100">
          <img id="imgProducto" src="${producto.imagen}">
        <div class="card-body d-flex flex-column">
          <h5 class="card-title"> ${producto.nombre} </h5>
          <p class="text-muted"> ${producto.sku} </p>
          <div class="mt-auto">
            <p class="card-text mt-auto"> Precio: $ ${producto.precio} </p>
            <button type="button" class="btn btn-secondary mt-auto">Ver producto</button>
          </div>
        </div>
      </div>
    </div>
  `

    const listaProductos = document.getElementById("listaProductos");
    listaProductos.innerHTML += itemHTML;
}

function agregaCategoria(categoria) {
    const itemHTML = `
    <div class="form-check">
      <input class="form-check-input" type="radio" name="radio-categoria" value=${categoria.nombre}>
        <label class="form-check-label" for="categoria-${categoria.nombre}">
          ${categoria.nombre}
        </label>
    </div>
`
  const categorias = document.getElementById("card-categorias");
  categorias.innerHTML += itemHTML;
}

function agregaMarca(marca) {
    const itemHTML = `
    <div class="form-check">
    <input class="form-check-input" type="radio" name="radio-marca" value=${marca.nombre}>
      <label class="form-check-label" for="marca-${marca.nombre}">
        ${marca.nombre}
      </label>
  </div>`

  const marcas = document.getElementById("card-marcas");
  marcas.innerHTML += itemHTML;
}

function agregaColeccion(coleccion) {
  const itemHTML = `
  <div class="form-check">
  <input class="form-check-input" type="radio" name="radio-coleccion" value=${coleccion.nombre}>
    <label class="form-check-label" for="coleccion-${coleccion.nombre}">
      ${coleccion.nombre}
    </label>
</div>`

  const colecciones = document.getElementById("card-colecciones");
  colecciones.innerHTML += itemHTML;
}

let peticionCategorias = fetch('http://localhost:8080/api/categoria/todo/')
                        .then(response => response.json()
                        .then(data => data.forEach(element => {
                            agregaCategoria(element);
                    })))

let peticionMarca = fetch('http://localhost:8080/api/marca/todo/')
                        .then(response => response.json()
                        .then(data => data.forEach(element => {
                            agregaMarca(element);
                    })))    
                
let peticionColeccion = fetch('http://localhost:8080/api/coleccion/todo/')
                .then(response => response.json()
                .then(data => data.forEach(element => {
                    agregaColeccion(element);
            })))   

let peticionProductos = fetch('http://localhost:8080/api/producto/pagina?pag=0&tam=333')
                        .then(response => response.json()
                        .then(data => data.forEach(element => {
                            agregaProducto(element);
                    })))

// Checkboxes

document.getElementById('btn-categoria').addEventListener('click', function() {
  let elementoActivo = document.querySelector('input[name="radio-categoria"]:checked');
  if(elementoActivo) {
    const listaProductos = document.getElementById("listaProductos");
    listaProductos.innerHTML = "";

    let peticionProductos = fetch('http://localhost:8080/api/producto/pagina?pag=0&tam=333')
    .then(response => response.json()
    .then(data => data.forEach(element => {
          console.log(element.categoria);
          console.log(elementoActivo.value);
        if(element.categoria.nombre == elementoActivo.value) {
          agregaProducto(element);
        }
    })))

  }
});

document.getElementById('btn-marca').addEventListener('click', function() {
  console.log("testeando");
  let elementoActivo = document.querySelector('input[name="radio-marca"]:checked');
  if(elementoActivo) {
    const listaProductos = document.getElementById("listaProductos");
    listaProductos.innerHTML = "";

    let peticionProductos = fetch('http://localhost:8080/api/producto/pagina?pag=0&tam=333')
    .then(response => response.json()
    .then(data => data.forEach(element => {
          console.log(element.marca.nombre);
          console.log(elementoActivo.value);
        if(element.marca.nombre == elementoActivo.value) {
          agregaProducto(element);
        }
    })))

  }
});

document.getElementById('btn-coleccion').addEventListener('click', function() {
  console.log("testeando");
  let elementoActivo = document.querySelector('input[name="radio-coleccion"]:checked');
  if(elementoActivo) {
    const listaProductos = document.getElementById("listaProductos");
    listaProductos.innerHTML = "";

    let peticionProductos = fetch('http://localhost:8080/api/producto/pagina?pag=0&tam=333')
    .then(response => response.json()
    .then(data => data.forEach(element => {
          console.log(element.coleccion.nombre);
          console.log(elementoActivo.value);
        if(element.coleccion.nombre == elementoActivo.value) {
          agregaProducto(element);
        }
    })))

  }
});

// const btn = document.getElementById("btn-categoria");        
// const radioButtons = document.querySelectorAll('input[name="radio-categoria"]');

// btn.addEventListener("click", () => {
//     let selectedSize;
//     for (const radioButton of radioButtons) {
//         if (radioButton.checked) {
//             selectedSize = radioButton.value;
//             break;
//         }
//     }
//     console.log(selectedSize);
// });


// //let checkbox = document.getElementById('radio-Hombre');
// var checkbox = document.querySelector("input[name=radio-Hombre]");

// checkbox.addEventListener('click', e => {

//     if(e.target.checked){
//         let listaProductos = document.getElementById("listaProductos")
//         listaProductos.innerHTML = "";

//         let peticionProductos = fetch('http://localhost:8080/api/producto/pagina?pag=0&tam=333')
//                         .then(response => response.json()
//                         .then(data => data.forEach(element => {
//                             if (element.categoria == "Hombre") {
//                               agregaProducto(element);
//                             }
//                     })))

//     }

// });
