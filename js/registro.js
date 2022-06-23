let botonEnviar = document.getElementById("botonEnviar");
let cajaAlerta = document.getElementById("alerta-caja");
let listaAlerta = document.getElementById("alerta-lista");
let textoAlerta = document.getElementById("alerta-texto");

function validarNombre(nombre){
    if (registroNombre.length < 3 || nombre > 100) {
      return false;
    }
    return true;
  } //validarNombre
  function validarApellido(apellido){
    if (registroAprellido < 3 || apellido > 100) {
      return false;
    }
    return true;
  } //validarApellido

  function validarEmail(direccion) {
    let direccionValida = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (direccion.match(direccionValida)){
     return true;
    }

    return false;
  } //validarEmail

  function validarTelefono(telefono){
    if (isNaN(telefono) || telefono.length === 10) {
      return false;
    }
    return true;
  } //validarTelefono

  function validarPassword(password){
    let passwordValida = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (password.match(passwordValida)){
     return true;
    }
    if (password.length < 8  || password.length > 20 ) {
      return false;
    }
    return true;
  }//validarPassword

  function validarConfirmPasswords() {
    registroPassword = document.getElementById('registroPassword');
    confirmPassword = document.getElementById('confirmPassword');
        if (regitroPassword != confirmPassword) {
      return false;
    } return true; 
    }//confirmPasswords

    function validarEdad(edad){
      if (isNaN(edad) || edad.length === 2 && registroEdad <= 18 || edad >= 80 ) {
        return false;
      }
      return true;
    } //validarEdad

 

 
  
botonEnviar.addEventListener("click", (event) => {
    
    event.preventDefault();

    let nombreFormulario = document.getElementById("nombre").value;
    let apellidoFormulario = document.getElementById("apellido").value;
    let correoFormulario = document.getElementById("correoElectronico").value;
    let telefonoFormulario = document.getElementById("telefono").value;
    let passwordFormulario = document.getElementById('registroPassword').value;
    let confirmPasswordFormulario = document.getElementById('confirmPassword').value;
    let edadFormulario = document.getElementById("edad").value;
  
   
    let listaErrores = "";

    
    // Validaciones...

    if ( !  (validarEmail(correoFormulario) && validarNombre(nombreFormulario) && 
          validarApellido(apellidoFormulario) && validarPassword(passwordFormulario) &&
          validarTelefono(telefonoFormulario) && validarConfirmPasswords(confirmPasswordFormulario) && 
          validarEdad(edadFormulario) ) ) {
      
            cajaAlerta.className = "alert alert-danger alert-dismissible fade show"
            cajaAlerta.style.display="block";

            if ( ! validarNombre(nombreFormulario) ) {
              listaErrores += "<li>Ingresa un nombre válido (entre 2 y 100 caracteres)</li>";
            }

            if ( ! validarEmail(correoFormulario) ) {
              listaErrores += "<li>Ingresa un correo válido (Ejemplo: usuario@proveedor.com)</li>";
            }

            if ( ! validarTelefono(telefonoFormulario) ) {
              listaErrores += "<li>Ingresa un telefono válido (número de teléfono a 10 digitos)</li>";
            }

            if ( ! validarAsunto(asuntoFormulario) ) {
              listaErrores += "<li>Ingresa un asunto válido (minimo 5 caracteres y maximo 1000) </li>";
            }

            if ( ! validarMensaje(mensajeFormulario) ) {
              listaErrores += "<li>Ingresa un mensaje válido (minimo 5 caracteres y maximo 1000) </li>";
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