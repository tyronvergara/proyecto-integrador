let botonEnviar = document.getElementById("botonEnviar");
let cajaAlerta = document.getElementById("alerta-caja");
let listaAlerta = document.getElementById("alerta-lista");
let textoAlerta = document.getElementById("alerta-texto");

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

  function validarEmail(direccion) {

    let direccionValida = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (direccion.match(direccionValida)){
     return true;
    }

    return false;
  } //validarEmail

 
  
 
  
botonEnviar.addEventListener("click", (event) => {
    
    event.preventDefault();

    let passwordFormulario = document.getElementById("exampleInputPassword1").value;
    let correoFormulario = document.getElementById("exampleInputEmail1").value;
   
    let listaErrores = "";

    
  
    // Validaciones...

    if ( !  (validarEmail(correoFormulario) && validarPassword(passwordFormulario) 
          ) ) {
      
            cajaAlerta.className = "alert alert-danger alert-dismissible fade show"
            cajaAlerta.style.display="block";

          

            if ( ! validarEmail(correoFormulario) ) {
              listaErrores += "<li>Ingresa un correo válido (Ejemplo: usuario@proveedor.com)</li>";
            }
            if ( ! validarPassword(passwordFormulario) ) {
                listaErrores += "<li>Ingresa correctamente tu contraseña</li>";    
              }
            

            textoAlerta.innerHTML = "Se encontraron los siguientes problemas: "
            listaAlerta.innerHTML = listaErrores

            console.log(listaErrores)

            window.scrollTo(0, 0);
    } else {
      let correoFormulario = document.getElementById("exampleInputEmail1").value;
      let passwordFormulario = document.getElementById('exampleInputPassword1').value;
    
      let usuarioInicioSesion = {
                              "correo": correoFormulario,
                              "password": passwordFormulario};

      localStorage.setItem("usuario", JSON.stringify(usuarioInicioSesion));


      textoAlerta.innerHTML = "¡Ingresando correctamente!"
      listaAlerta.innerHTML = "";
      cajaAlerta.className = "alert alert-success alert-dismissible fade show"

    
  

    // Regresando el formulario a datos en blanco
      document.getElementById("exampleInputEmail1").value = "";
    
      document.getElementById("exampleInputPassword1").value = "";

      botonEnviar.disabled = true;

      window.scrollTo(0, 0);
    }
    
  }

)
