let botonEnviar = document.getElementById("botonEnviar");

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
    if (nombre.length < 1) {
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
    if (isNaN(telefono.value)) {
      return false;
    }
    return true;
  } //validarTelefono
  
  function validarMensaje(mensaje){
    if (mensaje.length <= 0 || mensaje.length > 1000 ) {
      return false;
    }
    return true;
  }//validarMensaje

  function validarAsunto(asunto) {
    if (asunto.length <= 0 || asunto.length > 1000) {
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

    datosEmail.Subject = asuntoFormulario;
    
    datosEmail.Body = "Nombre del cliente: " + nombreFormulario + "<br>" +
                      "Teléfono del cliente: "  + telefonoFormulario  +"<br>" +
                      "Mensaje del cliente: " + mensajeFormulario;

    // Validaciones...

    if ( ! validarNombre(nombreFormulario) ) {
      
    }

    if (! validarEmail(correoFormulario) ) {
      
    }

    if (! validarTelefono(telefonoFormulario) ) {
      
    }

    if (! validarAsunto(asuntoFormulario) ) {
      
    }

    if ( ! validarMensaje(mensajeFormulario) ) {
      
    }

    Email.send(datosEmail).then(
        // CAMBIAR - (Alerta solo para pruebas)
        message => alert("Email enviado :)")

    // Regresando el formulario a datos en blanco
      document.getElementById("correoElectronico").value = "";
      document.getElementById("mensaje").value = "";
      document.getElementById("nombre").value = "";
      document.getElementById("telefono").value = "";
      document.getElementById("asunto").value = "";

    }
    
})