let out001 = {"sku":"out001",
"nombre":
"Bota Casual Levis para Hombre L211332 Cafe",
"img":"./img/productos/caballeros/out001/botas1.png",
"precio":"1599.00",
"tallas":[25,26,27,28,29,30],
"existencias":"28",
"producto":"Bota",
"categoria":"caballero"}

let out002 = {"sku":"out002",
"nombre":"Tenis Adidas para Hombre FY8568 Blanco",
"img" : "./img/productos/caballeros/out003/tenis1.png",
"precio":"1199.00",
"tallas":[25,26,27,28,29,30],
"existencias":"15",
"producto":"Tenis",
"catagoria":"caballeros"};

let out003 = {"sku":"out003",
"nombre":"Sandalias Nike para Hombre CN9675-002",
"img": "./img/productos/caballeros/out002/sandalia1.png",
"precio":"749.00",
"tallas":[25,26,27,28,29,30],
"existencias":"30",
"producto":"Sandalias",
"catagoria":"caballeros"}

 let out004= {"Sku":"out004",
 "nombre":"Bota Paulina para Mujer Cafe",
"precio":"659.00",
"tallas":[22,23,24,25,26],
"existencias":"25",
"tipo de Producto":"Bota",
"catagoria":"Damas",
"img":"./img/productos/Damas/out004/4.webp"}

let out005= {"Sku":"outoo5",
"nombre":"Tenis Adidas para Mujer GY0700 Negro",
"precio":"1299.00",
"tallas":[22,23,24,25,26],
"existencias":"21",
"producto":"Tenis",
"catagoria":"Damas",
"img":"./img/productos/Damas/out005/5.webp"}

let out006= {"Sku":"outoo6",
"nombre":"Zapatillas Paulina para Mujer 14215 Cafe",
"precio":"469.00",
"tallas":[22,23,24,25,26],
"existencias":"12",
"producto":"Zapatillas",
"catagoria":"Damas",
"img":"./img/productos/Damas/out006/6.webp"}

let out007= {"Sku":"outoo7",
"nombre":"Tenis Adidas para Niña GZ3318 Blanco",
"precio":"999.00",
"tallas":[16,17,18,19,20,21],
"existencias":"13",
"producto":"Tenis",
"catagoria":"Niños",
"img":"./img/productos/Nino/out007/7.webp"}

let out008= {"Sku":"outoo8",
"nombre":"Zapato Casual Jakuna para Niña 21854 Rojo",
"precio":"299.00",
"tallas":[16,17,18,19,20,21],
"existencias":"6",
"producto":"Zapato",
"catagoria":"Niños",
"img":"./img/productos/Nino/out008/8.webp"}

let out009= {"Sku":"outoo9",
"nombre":"Tenis Marvel para Niño 73731 Rojo ",
"precio":"499.00",
"tallas":[16,17,18,19,20,21],
"existencias":"14",
"producto":"Zapato",
"catagoria":"Niños",
"img":"./img/productos/Nino/out009/9.webp"}

let out010 = {"sku":"out0010",
"nombre":"Sandalias Minipapos para Niño 785 Negro",
"img":"./img/productos/bebes/out10/sandaliasbebe1.png",
"precio":"319.00",
"tallas":[13,14,15,16],
"existencias":"30",
"producto":"Sandalias",
"categoria":"bebes"}
        
let out011= {"sku":"out011",
"nombre":"Tenis Minipapos para Niño 35306 Azul marino",
"img":"./img/productos/bebes/out11/bebesnino1.png",
"precio":"1199.00",
"tallas":[13,14,15,16],
"existencias":"15",
"producto":"Tenis",
"categoria":"bebes"}
        
let out012= {"sku":"out013",
"nombre":"Tenis Nike para Niña AR4137-510 Lila",
"img":"./img/productos/bebes/out12/bebesnina1.png",
"precio":"1049.00.00", 
"tallas":[13,14,15,16],
"existencias":"10",
"producto":"Tenis",
"categoria":"bebes"}


function agregaProducto(producto){
    const itemHTML =    `<div class="col mb-4">
                                <div class="card text-center h-100">
                                        <img id="imgProducto" src="${producto.img}">
                                        <div class="card-body">
                                                <h5 class="card-title"> ${producto.nombre} </h5>
                                                <p class="text-muted">${producto.producto}</p>
                                                <p  class="card-text"> Precio: $ ${producto.precio} </p>
                                                <button type="button" class="btn btn-dark">Agregar al carrito</button>
                                        </div>
                                </div>
                        </div>`

    const itemsContainer = document.getElementById("listaProductos");
    itemsContainer.innerHTML += itemHTML;
}

agregaProducto(out001);
agregaProducto(out002);
agregaProducto(out003);
agregaProducto(out004);
agregaProducto(out005);
agregaProducto(out006);
agregaProducto(out007);
agregaProducto(out008);
agregaProducto(out009);
agregaProducto(out010);
agregaProducto(out011);
agregaProducto(out012);
