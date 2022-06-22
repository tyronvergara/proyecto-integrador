function agregarTarjeta(persona){
    const itemHTML =    `<div class="col my-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                            <img class="img-fluid rounded" src="${persona.imagen}" alt="Fotografía de ${persona.nombre}">
                                        </div>

                                        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                            <h5 class="card-title">${persona.nombre}</h5>
                                            <h6 class="card-subtitle mb-2 text-muted">${persona.carrera}</h6>
                                            <p class="card-text">${persona.descripcion}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>`

    const itemsContainer = document.getElementById("contenido-nosotros");
    itemsContainer.innerHTML += itemHTML;
}

let hector = {"nombre": "Héctor Zamora", 
            "imagen": "./img/nosotros/hector.jpeg", 
            "carrera": "Ingeniería Civil", 
            "descripcion": "Mi nombre es Héctor Zamora, nací el 12 de marzo de 1991, soy de la Ciudad de México. Estudié ingeniería civil, sin embargo, en la actualidad me encuentro estudiando en un bootcamp sobre programación en JAVA. Tengo planeado convertirme en un desarrollador Fullstack."};
let daniela = {"nombre": "Daniela Moreno", 
                "imagen": "./img/nosotros/daniela.jpeg", 
                "carrera": "Ingeniería Mecatrónica", 
                "descripcion": "Soy Daniela Moreno, tengo 28 años, soy originaria de Tampico, Tamaulipas. Estudíe la carrera de Ingeniería Mecatrónica, aunque la mayoría de mis empleos fueron de otra área, quise cambiar mi rumbo con la programacion de páginas web."};
let tyron = {"nombre": "Tyron Vergara", 
            "imagen": "./img/nosotros/tyron.jpeg", 
            "carrera": "Ingeniería en Computación", 
            "descripcion": ""};
let gabriel = {"nombre": "Gabriel Malacara", 
                "imagen": "./img/nosotros/gabriel.jpeg", 
                "carrera": "Licenciatura en Administración y Finanzas", 
                "descripcion": "Estudio administración y finanzas pero también soy un apasionado de la tecnología con un especial interés en ciencia de datos. Estoy interesado en colaborar con empresas enfocadas a la industria fintec que me permitan continuar con mi desarrollo como programador"};
let antonio = {"nombre": "Antonio Bonilla", 
                "imagen": "./img/nosotros/antonio.jpeg", 
                "carrera": "Ingeniería Geofísica", 
                "descripcion": "Ingeniero Geofísico emprendiendo una nueva etapa como desarrollador Java Full Stack. Me gusta tecnológica, escribir y conocer nuevos generos musicales."};
let saul = {"nombre": "Saúl Domínguez", 
            "imagen": "./img/nosotros/saul.jpg", 
            "carrera": "Ingeniería en Algo", 
            "descripcion": "Nací un 11 de abril de 1994 en la ciudad de México. Soy el más pequeño de 3 hermanos.Estoy estudiando una carrera en ingeniería en la uam Azcapotzalco, tengo 28 años, me gusta mucho jugar videojuegos, salir con mis amigos y pasar tiempo con mi familia."};

agregarTarjeta(hector);
agregarTarjeta(daniela);
agregarTarjeta(tyron);
agregarTarjeta(gabriel);
agregarTarjeta(antonio);
agregarTarjeta(saul);