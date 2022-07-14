function agregaProducto(producto){
    const itemHTML =    `<div class="col mb-4">
                                <div class="card text-center h-100">
                                        <img id="imgProducto" src="${producto.imagen}">
                                        <div class="card-body d-flex flex-column">
                                                <h5 class="card-title"> ${producto.nombre} </h5>
                                                <p  class="card-text"> Precio: $ ${producto.precio} </p>
                                                <button type="button" class="btn btn-secondary mt-auto">Agregar al carrito</button>
                                        </div>
                                </div>
                        </div>`

    const listaProductos = document.getElementById("listaProductos");
                listaProductos.innerHTML += itemHTML;
}

let peticionProductos = fetch('http://localhost:8080/api/producto/todo/desc')
.then(response => response.json()
.then(data => data.slice(-6).forEach(element => {
      agregaProducto(element);
})))