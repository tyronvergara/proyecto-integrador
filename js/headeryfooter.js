
  if (window.location.pathname == `/index.html`) {
    var inicio = "active"
  }
  if (window.location.pathname == `/productos.html`) {
    var productos = "active"
  }
  if (window.location.pathname == `/contacto.html`) {
    var contacto = "active"
  }
  if (window.location.pathname == `/nosotros.html`) {
    var nosotros = "active"
  }
  ;

function header(nav){
  


    const headerHTML = 
     `
     <nav  class="navbar navbar-expand-md">
       <div class="container">
 
         <img class="navbar-brand logotipo mt-2" src="../img/logo.svg" alt="OutShoes">
       
         <button class="navbar-dark navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
         </button>
 
         <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
           <ul class="navbar-nav mr-auto mt-2 mt-lg-0 text-sm-center text-xs-center">
             <li class="nav-item ${inicio} " >
              <a class="nav-link" href="../index.html">Inicio<span class="sr-only">(current)</span></a>
            </li> 
            <li class="nav-item ${productos}  " >
            <a class="nav-link " href="../productos.html">Productos</a>
         </li>
            <li class="nav-item  ${contacto}" >
               <a class="nav-link" href="../contacto.html">Contacto</a>
            </li>
            <li class="nav-item ${nosotros}" >
              <a class="nav-link" href="../nosotros.html">Nosotros</a>
            </li>
          </ul>
 
          <form class="form-inline my-2 my-lg-0 justify-content-center">
             <input class="form-control mr-sm-2" type="search" placeholder="Ingresa tu búsqueda" aria-label="Search">
             <button class="btn btn-secondary my-2 my-sm-0" type="submit">Buscar</button>
          </form>
 
        </div>
 
       </div> 
 
     </nav>
 
     <div class="px-3 py-2 border-bottom">
 
       <div class="container">
 
         <div class="row align-items-center">
 
           <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 text-lg-left  text-md-left text-sm-center text-xs-center">
             <span class="align-text-bottom saludo">¡Hola, visitante!</span>
           </div>
 
           <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 text-lg-right  text-md-right text-sm-center text-xs-center">
             <a href="./ingreso.html" class="links-navegacion px-3">
               <i class="bi bi-person iconos-navegacion" data-toggle="tooltip" data-placement="bottom" title="Iniciar sesión">
               </i>
             </a>
             
             <a href="./carrito.html" class="links-navegacion px-3">
               <i class="bi bi-cart2 iconos-navegacion" data-toggle="tooltip" data-placement="bottom" title="Carrito de compras">
               </i>
             </a>
 
           </div>
 
         </div>
 
       </div>
 
     </div>
 `;
    const itemsContainer = document.getElementById("header");
    itemsContainer.innerHTML += headerHTML;
}
function footer(){
    const footerHTML = 

` <div class="container p-4">
<div class="row">

  <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 p-4">
    <h2 class="pb-3 text-center">Sobre nosotros</h2>

    <p class="mx-3"> Somos una empresa dedicada a la venta de zapato a precio de outlet en internet con varios años de experiencia en el sector.
    </p>

  </div>

  <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 p-4">
    <h2 class="pb-3 text-center">Enlaces de interés</h2>

    <nav class="nav flex-column text-center">
      <a class="nav-link links-faq" href="../preguntas-frecuentes.html">Preguntas frecuentes</a>
      <a class="nav-link links-faq" href="../contacto.html">Contacto</a>
      <a class="nav-link links-faq" href="./registro.html">Registro</a>
    </nav>

  </div>

  <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 p-4">
    <h2 class="pb-3 text-center">Redes sociales</h2>

    <nav class="nav justify-content-center">
      <a class="nav-link links-faq" href="http://www.facebook.com"><i class="bi bi-facebook iconos-sociales"></i></a>
      <a class="nav-link links-faq" href="http://www.instragram.com"><i class="bi bi-instagram iconos-sociales"></i></a>
      <a class="nav-link links-faq" href="http://www.twitter.com"><i class="bi bi-twitter iconos-sociales"></i></a>
    </nav>

  </div>

</div>

</div>
`
    const itemsContainer = document.getElementById("footer");
    itemsContainer.innerHTML += footerHTML;
}

header();
footer();


// let nav1 =


// function barra(){
//   if (txtNombre.value.length <3){
//       return false;
//   } 
//   return true;
