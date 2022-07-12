function agregaProducto(producto){
    const itemHTML =    
`    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12 mb-2">
        <div class="card text-center h-100">
            <img id="imgProducto" src="${producto.imagen}">
            <div class="card-body">
                    <h5 class="card-title"> ${producto.nombre} </h5>
                    <!-- <p class="text-muted"> ${producto.descripcion} </p> -->
                    <p class="text-muted"> ${producto.sku} </p>
                    <p  class="card-text"> Precio: $ ${producto.precio} </p>
            </div>
        </div>
  </div>`

    const listaProductos = document.getElementById("listaProductos");
    listaProductos.innerHTML += itemHTML;
}

function agregaCategoria(categoria) {
    const itemHTML = `
    <div class="form-check">
    <label class="form-check-label">
      <input type="radio" class="form-check-input" name="optradio"> ${categoria.nombre}
    </label>
  </div>`

  const categorias = document.getElementById("card-categorias");
  categorias.innerHTML += itemHTML;
}

function agregaMarca(marca) {
    const itemHTML = `
    <div class="form-check">
    <label class="form-check-label">
      <input type="radio" class="form-check-input" name="optradio">${marca.nombre}
    </label>
  </div>`

  const marcas = document.getElementById("card-marcas");
  marcas.innerHTML += itemHTML;
}

function agregaTalla(talla) {
    const itemHTML = `
    <div class="form-check">
    <label class="form-check-label">
      <input type="checkbox" class="form-check-input" value="">${talla.numero}
    </label>
  </div>`

  const tallas = document.getElementById("card-tallas");
  tallas.innerHTML += itemHTML;
}

function agregaColeccion(coleccion) {
    const itemHTML = `
    <div class="form-check">
    <label class="form-check-label">
      <input type="checkbox" class="form-check-input" value="">${coleccion.nombre}
    </label>
  </div>`

  const colecciones = document.getElementById("card-colecciones");
  colecciones.innerHTML += itemHTML;
}


let peticionProductos = fetch('http://localhost:8080/api/producto/pagina?pag=0&tam=333')
                        .then(response => response.json()
                        .then(data => data.forEach(element => {
                            agregaProducto(element);
                    })))

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

let peticionTalla = fetch('http://localhost:8080/api/talla/todo/')
                    .then(response => response.json()
                    .then(data => data.forEach(element => {
                        agregaTalla(element);
                })))        
                
let peticiconColeccion = fetch('http://localhost:8080/api/coleccion/todo/')
                .then(response => response.json()
                .then(data => data.forEach(element => {
                    agregaColeccion(element);
            })))   




// let peticion = fetch('http://localhost:8080/api/producto/todo')
//                         .then(response => response.json()
//                         .then(data => data.forEach(element => {
//                             agregaProducto(element);
//                     })))

//JSON.parse(localStorage.getItem("productos") || "[]");

// arregloProductos.forEach(element => {
//         agregaProducto(element);
// });
