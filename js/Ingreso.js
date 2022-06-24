let botonEnviar = document.getElementById("botonEnviar");
let cajaAlerta = document.getElementById("alerta-caja");
let listaAlerta = document.getElementById("alerta-lista");
let textoAlerta = document.getElementById("alerta-texto");

function validarNombre(nombre){
    if (nombre.length < 6 || nombre.length > 12) {
      return false;
    }
    return true;
  } //validarNombre

  function validarEmail(direccion) {

    let direccionValida = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (direccion.match(direccionValida)){
     return true;
    }

    return false;
  } //validarEmail

 
  
 
  
botonEnviar.addEventListener("click", (event) => {
    
    console.log ("lis")
    event.preventDefault();

    let nombreFormulario = document.getElementById("exampleInputPassword1").value;

    let correoFormulario = document.getElementById("exampleInputEmail1").value;
   
    let listaErrores = "";

    // Enviar de forma temporal el correo al remitente (para comprobar funcionamiento)
   

    // Definir "asunto" y "cuerpo" del mensaje

  
    // Validaciones...

    if ( !  (validarEmail(correoFormulario) && validarNombre(nombreFormulario) 
          ) ) {
      
            cajaAlerta.className = "alert alert-danger alert-dismissible fade show"
            cajaAlerta.style.display="block";

          

            if ( ! validarEmail(correoFormulario) ) {
              listaErrores += "<li>Ingresa un correo válido (Ejemplo: usuario@proveedor.com)</li>";
            
            }
            if ( ! validarNombre(nombreFormulario) ) {
                listaErrores += "<li>Ingresa una contraseña válida </li>";
                
              }
            

            textoAlerta.innerHTML = "Se encontraron los siguientes problemas: "
            listaAlerta.innerHTML = listaErrores

            window.scrollTo(0, 0);
    } else {

      textoAlerta.innerHTML = "¡Ingresando correctamente!"
      listaAlerta.innerHTML = "";
      cajaAlerta.className = "alert alert-success alert-dismissible fade show"


      
  

    // Regresando el formulario a datos en blanco
      document.getElementById("correoElectronico").value = "";
    
      document.getElementById("nombre").value = "";

      botonEnviar.disabled = true;

      window.scrollTo(0, 0);
    }
    
  }

)
