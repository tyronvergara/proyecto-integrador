let botonEnviar = document.getElementById("botonEnviar");
let cajaAlerta = document.getElementById("alerta-caja");
let listaAlerta = document.getElementById("alerta-lista");
let textoAlerta = document.getElementById("alerta-texto");

function validarNombre(nombre){
    if (nombre.length < 3 || nombre > 100) {
      return false;
    }
    return true;
  } //validarNombre

  function validarApellidom(apellidom){
    if (apellidom.length < 3 || apellidom > 100) {
      return false;
    }
    return true;
  } //validarApellidoMaterno

  function validarApellidop(apellidop){
    if (apellidop.length < 3 || apellidop > 100) {
      return false;
    }
    return true;
  } //validarApellidoPaterno

  function validarEmail(direccion) {
    let direccionValida = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (direccion.match(direccionValida)){
     return true;
    }
    return false;
  } //validarEmail

  function validarPassword(password){
    let passwordValida = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (password.match(passwordValida)){
     return true;
    }
    if (password.length < 6  || password.length > 20 ) {
      return false;
    }
    return true;
  }//validarPassword

  function validarConfirmPasswords(password2, password) {
    if (password2 == password) {
      return true;
    } return false; 
    }//confirmPasswords

  
botonEnviar.addEventListener("click", (event) => {
    
    event.preventDefault();

    let nombreFormulario = document.getElementById("registroNombre").value;
    let apellidomFormulario = document.getElementById("registroApellidom").value;
    let apellidopFormulario = document.getElementById("registroApellidop").value;
    let correoFormulario = document.getElementById("registroCorreoElectronico").value;
    let passwordFormulario = document.getElementById('registroPassword').value;
    let confirmPasswordFormulario = document.getElementById('confirmContraseña').value;

   
    let listaErrores = "";
    
    // Validaciones...

    if ( !(validarNombre(nombreFormulario) && validarApellidom(apellidomFormulario) && 
    validarApellidop(apellidopFormulario) && validarEmail(correoFormulario) && 
    validarPassword(passwordFormulario) && validarConfirmPasswords(confirmPasswordFormulario, passwordFormulario))) {
      
            cajaAlerta.className = "alert alert-danger alert-dismissible fade show"
            cajaAlerta.style.display="block";


            if ( ! validarNombre(nombreFormulario) ) {
              listaErrores += "<li>Ingresa un nombre válido (entre 3 y 40 caracteres)</li>";
            }

            if ( ! validarApellidom(apellidomFormulario) ) {
              listaErrores += "<li>Ingresa un apellido materno válido (entre 3 y 40 caracteres)</li>";
            }

            if ( ! validarApellidop(apellidopFormulario) ) {
              listaErrores += "<li>Ingresa un apellido paterno válido (entre 3 y 40 caracteres)</li>";
            }

            if ( ! validarEmail(correoFormulario) ) {
              listaErrores += "<li>Ingresa un correo válido (Ejemplo: usuario@proveedor.com)</li>";
            }

            if ( ! validarPassword(passwordFormulario) ) {
              listaErrores += "<li>Ingresa una contraseña válida (mínimo 6 caracteres y máximo 20) </li>";
            }

            if ( ! validarConfirmPasswords(confirmPasswordFormulario, passwordFormulario) ) {
              listaErrores += "<li>Las contraseñas no coinciden</li>";
            }
            

            textoAlerta.innerHTML = "Se encontraron los siguientes problemas: "

            listaAlerta.innerHTML = listaErrores;

console.log(listaErrores)

            window.scrollTo(0, 0);
    } else {
      let nombreFormulario = document.getElementById("registroNombre").value;
      let apellidomFormulario = document.getElementById("registroApellidom").value;
      let apellidopFormulario = document.getElementById("registroApellidop").value;
      let correoFormulario = document.getElementById("registroCorreoElectronico").value;
      let passwordFormulario = document.getElementById('registroPassword').value;

      // let usuarioRegistrado = {"nombre": nombreFormulario,
      //                         "apellidom": apellidomFormulario,
      //                         "apellidop": apellidopFormulario,
      //                         "correo": correoFormulario,
      //                         "contrasena": passwordFormulario};

      fetch("http://localhost:8080/api/usuario/agregar/", {
        method: "post",
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
          body: JSON.stringify({
            "nombre": nombreFormulario,
            "correo": correoFormulario,
            "contrasena": passwordFormulario,
            "apellidop": apellidopFormulario,
            "apellidom": apellidomFormulario,
      })
      })
      .then( (response) => { response.json()
      });

      //localStorage.setItem("usuario", JSON.stringify(usuarioRegistrado));

      listaAlerta.innerHTML = "";
      cajaAlerta.className = "alert alert-success alert-dismissible fade show"
      textoAlerta.innerHTML = "¡Regístro Exitoso!"
      cajaAlerta.style.display = "block";

      botonEnviar.disabled = true;

      window.setTimeout(function() {
        window.location.href = "./Ingreso.html";;
    }, 3000);

    // Regresando el formulario a datos en blanco
      document.getElementById("registroNombre").value = "";  
      document.getElementById("registroApellidom").value = "";  
      document.getElementById("registroApellidop").value = "";  
      document.getElementById("registroCorreoElectronico").value = "";
      document.getElementById("registroPassword").value = "";
      document.getElementById("confirmContraseña").value = "";

    }
    
  }

)