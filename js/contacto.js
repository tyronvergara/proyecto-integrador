let botonEnviar = document.getElementById("botonEnviar");
let cajaAlerta = document.getElementById("alerta-caja");
let listaAlerta = document.getElementById("alerta-lista");
let textoAlerta = document.getElementById("alerta-texto");

let datosEmail = {
    Host : "smtp.elasticemail.com",
    Username : "outshoes-ch13@outlook.com",
    Password : "70904C90A41C1481F68CE31871426CBDA060",
    To : '', //
    From : "outshoes-ch13@outlook.com",
    Subject : "", //
    Body : "" //
} 

function validarNombre(nombre){
    if (nombre.length < 2 || nombre > 100) {
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

  function validarTelefono(telefono){
    if (isNaN(telefono) || telefono.length < 10 || telefono.length > 20) {
      return false;
    }
    return true;
  } //validarTelefono
  
  function validarMensaje(mensaje){
    if (mensaje.length <= 5 || mensaje.length > 1000 ) {
      return false;
    }
    return true;
  }//validarMensaje

  function validarAsunto(asunto) {
    if (asunto.length <= 5 || asunto.length > 1000) {
      return false;
    }
    return true;
  }//validarAsunto
  
botonEnviar.addEventListener("click", (event) => {
    
    event.preventDefault();

    let nombreFormulario = document.getElementById("nombre").value;
    let telefonoFormulario = document.getElementById("telefono").value;
    let mensajeFormulario = document.getElementById("mensaje").value;
    let correoFormulario = document.getElementById("correoElectronico").value;
    let asuntoFormulario = document.getElementById("asunto").value;
    let listaErrores = "";

    // Enviar de forma temporal el correo al remitente (para comprobar funcionamiento)
    datosEmail.To = correoFormulario

    // Definir "asunto" y "cuerpo" del mensaje

    datosEmail.Subject = "Formulario de contacto OutShoes - " + asuntoFormulario;
    
    datosEmail.Body = "Nombre del cliente: " + nombreFormulario + "<br>" +
                      "Teléfono del cliente: "  + telefonoFormulario  +"<br>" +
                      "Mensaje del cliente: " + mensajeFormulario;

    // Validaciones...

    if ( !  (validarEmail(correoFormulario) && validarNombre(nombreFormulario) && 
          validarTelefono(telefonoFormulario) && validarAsunto(asuntoFormulario) && 
          validarMensaje(mensajeFormulario) ) ) {
      
            cajaAlerta.className = "alert alert-danger alert-dismissible fade show"
            cajaAlerta.style.display="block";

            if ( ! validarNombre(nombreFormulario) ) {
              listaErrores += "<li>Ingresa un nombre válido (entre 2 y 100 caracteres)</li>";
            }

            if ( ! validarEmail(correoFormulario) ) {
              listaErrores += "<li>Ingresa un correo válido (Ejemplo: usuario@proveedor.com)</li>";
            }

            if ( ! validarTelefono(telefonoFormulario) ) {
              listaErrores += "<li>Ingresa un télefono válido (número de teléfono a 10 digitos)</li>";
            }

            if ( ! validarAsunto(asuntoFormulario) ) {
              listaErrores += "<li>Ingresa un asunto válido (minimo 5 caracteres y máximo 1000) </li>";
            }

            if ( ! validarMensaje(mensajeFormulario) ) {
              listaErrores += "<li>Ingresa un mensaje válido (mínimo 5 caracteres y máximo 1000) </li>";
            }

            textoAlerta.innerHTML = "Se encontraron los siguientes problemas: "

            listaAlerta.innerHTML = listaErrores;

            window.scrollTo(0, 0);
    } else {

      textoAlerta.innerHTML = "¡Su mensaje ha sido enviado correctamente!"
      listaAlerta.innerHTML = "";
      cajaAlerta.className = "alert alert-success alert-dismissible fade show"


      Email.send(datosEmail).then(
        message =>  cajaAlerta.style.display="block"

    );

    // Regresando el formulario a datos en blanco
      document.getElementById("correoElectronico").value = "";
      document.getElementById("mensaje").value = "";
      document.getElementById("nombre").value = "";
      document.getElementById("telefono").value = "";
      document.getElementById("asunto").value = "";
      
      botonEnviar.disabled = true;

      window.scrollTo(0, 0);
    }
    
  }

)