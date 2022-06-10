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

function validarNombre(taco){
    if (taco.length < 3) {
      return false;
    }
    return true;
  } //validarNombre

  function validarEmail(email) {
    if (email() ){
     return false;
  }
  return true;
  } //validarEmail

  function validarTelefono(telefono){
    if (isNaN(telefono.value)) {
      return false;
    }
    return true;
  } //validarTelefono
  
  function validarMensaje(mensaje){
    if (mensaje.length >3 && mensaje.length<200 ) {
      return false;
    }
    return true;
  }//validarMensaje
  
botonEnviar.addEventListener("click", (event) => {
    
    event.preventDefault();

    let nombreFormulario = document.getElementById("nombre").value;
    let telefonoFormulario = document.getElementById("telefono").value;
    let mensajeFormulario = document.getElementById("mensaje").value;
    let correoFormulario = document.getElementById("correoElectronico").value;

    datosEmail.To = correoFormulario
    // datosEmail.To = document.getElementById("correoElectronico").value;
    datosEmail.Subject = "Mensaje del formulario de contacto";
    
    datosEmail.Body = "Nombre del cliente: " + nombreFormulario + "<br>" +
                      "Teléfono del cliente: "  + telefonoFormulario  +"<br>" +
                      "Mensaje del cliente: " + mensajeFormulario;

    if (! validarNombre(nombreFormulario) ) {
        document.getElementById("nombre").value = "El nombre es muy corto";
        return false;
    }

    if (! validarTelefono(telefonoFormulario) ) {
      document.getElementById("telefono").value = "El teléfono es invalido";
      return false;
  }

    Email.send(datosEmail).then(
        message => alert("Email enviado :)")
    );
  
      document.getElementById("correoElectronico").value = "";
      document.getElementById("mensaje").value = "";
      document.getElementById("nombre").value = "";
      document.getElementById("telefono").value = "";
    
})