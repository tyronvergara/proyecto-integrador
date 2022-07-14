let precioTotal = [];
let precio;

const cero = 0;

localStorage.setItem("precio", JSON.stringify(cero))

if (localStorage.getItem("productos")) {

    let arregloProductos = JSON.parse(localStorage.getItem("productos") || "[]");

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
            
                let precioProducto = parseFloat(data.precio);
                let cantidadProducto = parseFloat(arregloProductos[n].cantidad);
            

            if(localStorage.getItem("precio")) {
                let dinero = JSON.parse(localStorage.getItem("precio"));
                dinero += precioProducto * cantidadProducto;
                localStorage.setItem("precio", JSON.stringify(dinero));
            } else {
                let dinero = precioProducto * cantidadProducto;
                localStorage.setItem("precio", JSON.stringify(dinero));
            }   

            let subtotal = JSON.parse(localStorage.getItem("precio"));
            console.log(subtotal + " subtotal")

            if(subtotal < 449) {
                let costo = subtotal;
                let envio = 120;

                document.getElementById("precio-carrito").innerHTML = "$ " + costo.toString();

                document.getElementById("precio-envio").innerHTML = "$ " + envio.toString();
                costo += 120;

                document.getElementById("total-carrito").innerHTML = "$ " + costo.toString();
            } else {
                document.getElementById("precio-envio").innerHTML = "$ 0";
                document.getElementById("precio-carrito").innerHTML = "$ " + subtotal.toString();
                document.getElementById("total-carrito").innerHTML = "$ " + subtotal.toString();
            }


        
            

        }
        
        )
        
        )


    }

    let arregloPrecio = JSON.parse(localStorage.getItem("productos"))
    document.getElementById("precio-carrito").innerHTML += arregloPrecio.toString();

}
