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

            listaErrores += "<li>Usuario o contraseña inválido</li>";
            

            textoAlerta.innerHTML = "Se encontraron los siguientes problemas: "
            listaAlerta.innerHTML = listaErrores

            console.log(listaErrores)

            window.scrollTo(0, 0);
    } else {
      let correoFormulario = document.getElementById("exampleInputEmail1").value;
      let passwordFormulario = document.getElementById('exampleInputPassword1').value;
    
      // let usuarioInicioSesion = {
      //                             "correo": correoFormulario,
      //                             "contrasena": passwordFormulario
      //                           };

      fetch("http://localhost:8080/api/ingreso/", {
          method: "post",
            headers: {
                'Accept': 'application/json',
                  'Content-Type': 'application/json'
              },
                  body: JSON.stringify({
                        "correo": correoFormulario,
                        "contrasena": passwordFormulario
                  })
              })
        .then( (response) => { response.json()
        .then( (data) => {
          localStorage.setItem("autenticacion", data.accessToken)
          //localStorage.setItem("nombre", "nombre...")
        }
        )});

          // let response = await fetch('http://localhost:8080/api/ingreso/', {
          //   method: 'POST',
          //     headers: {
          //       'Content-Type': 'application/json;charset=utf-8'
          //         },
          //           body: JSON.stringify(usuarioInicioSesion)
          //           });

          // let result = response.json();
          // console.log(result.message);

      //localStorage.setItem("usuario", JSON.stringify(usuarioInicioSesion));

      listaAlerta.innerHTML = "";
      cajaAlerta.className = "alert alert-success alert-dismissible fade show"
      textoAlerta.innerHTML = "¡Ingresando Correctamente....!"
      cajaAlerta.style.display = "block";

      botonEnviar.disabled = true;

       window.setTimeout(function() {
         window.location.href = "../index.html";;
     }, 3000);
    

  

    // Regresando el formulario a datos en blanco
      document.getElementById("exampleInputEmail1").value = "";
    
      document.getElementById("exampleInputPassword1").value = "";

  
    }
    
  }
  

)
