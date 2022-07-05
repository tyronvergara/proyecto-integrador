function agregaProducto(producto, id){
    const itemHTML =    `<div class="col mb-4">
                                <div class="card text-center h-100">
                                        <img id="imgProducto" src="${producto.imagen}">
                                        <div class="card-body d-flex flex-column">
                                                <h5 class="card-title"> ${producto.nombre} </h5>
                                                <p class="text-muted">${producto.descripcion}</p>
                                                <p  class="card-text"> Precio: $ ${producto.precio} </p>
                                                <button type="button" class="btn btn-secondary mt-auto">Agregar al carrito</button>
                                        </div>
                                </div>
                        </div>`

    const listaProductos = document.getElementById("listaProductos");
    const listaDeseados = document.getElementById("listaDeseados");
    const listaVendidos = document.getElementById("listaVendidos");
    // Agregar de forma temporal a "deseados" y "vendidos"

        if(id == "listaProductos"){
                listaProductos.innerHTML += itemHTML;
        } else {
                listaDeseados.innerHTML += itemHTML;
                listaVendidos.innerHTML += itemHTML;
        }
}

let arregloProductos = JSON.parse(localStorage.getItem("productos") || "[]");

// arregloProductos.forEach(element => {
//         agregaProducto(element);
// });

for (let index = 0; index < 3; index++) {
        agregaProducto(arregloProductos[index], "listDeseados");
}

for (let index = arregloProductos.length - 1; index > arregloProductos.length - 4; index--) {
        agregaProducto(arregloProductos[index], "listaProductos");
}