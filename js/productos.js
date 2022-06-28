function agregaProducto(producto){
    const itemHTML =    
`    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12 mb-2">
        <div class="card text-center h-100">
            <img id="imgProducto" src="${producto.imagen}">
            <div class="card-body">
                    <h5 class="card-title"> ${producto.nombre} </h5>
                    <p class="text-muted"> ${producto.descripcion} </p>
                    <p  class="card-text"> Precio: $ ${producto.precio} </p>
            </div>
        </div>
  </div>`

    const listaProductos = document.getElementById("listaProductos");
    listaProductos.innerHTML += itemHTML;
}

let arregloProductos = JSON.parse(localStorage.getItem("productos") || "[]");

arregloProductos.forEach(element => {
        agregaProducto(element);
});
