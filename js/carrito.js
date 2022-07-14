let precio;

if (localStorage.getItem("productos")) {

    let arregloProductos = JSON.parse(localStorage.getItem("productos") || "[]");
    let precioTotal = [];

    for (let n in arregloProductos) {
            fetch('http://localhost:8080/api/producto/' + arregloProductos[n].id)
            .then(response => response.json()
            .then(data => {
    
            let fila = `<tr>
                            <td>${data.nombre}</td>
                            <td>${arregloProductos[n].cantidad}</td>
                            <td>$${data.precio}</td>
                        </tr>`

            document.getElementById("productos-carrito").innerHTML += fila;
            precioTotal.push(parseFloat(data.precio) * parseFloat(arregloProductos[n].cantidad))
        }))
    }
    let total = sumaArreglo(precioTotal);
    document.getElementById("precio-carrito").innerHTML += total.toString();

}

function sumaArreglo(arreglo) {
    for (let n in arreglo) {
        precio += n;
    }

    return precio;
}