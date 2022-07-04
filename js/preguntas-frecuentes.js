function agregarPregunta(question){
const itemHTML =  

        `<div class="card">
             <div class="card-header" id="${question.heading}">
                <h2 class="mb-0">
                    <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target= #${question.collapse}  aria-expanded="false" aria-controls=${question.collapse}>
                        ${question.pregunta}
                    </button>
                </h2>
            </div>
        <div id=${question.collapse} class="collapse" aria-labelledby="${question.heading}" data-parent="#accordionExample">
                <div class="card-body">
                    ${question.respuesta} 
                </div>
            </div>
        </div>`

const itemsContainer = document.getElementById("preguntas-frecuentes");
itemsContainer.innerHTML += itemHTML;
} //Funcion agreagar pregunta

// let questions = {"pregunta": "hola", "respuesta" : "adios", "pregunta":"hola"}; 
// agregarPregunta(questions);



let faq = [
    {"heading": "1", "collapse": "1", "pregunta": "hola", "respuesta" : "adios"},
    {"heading": "2", "collapse": "2", "pregunta": "hola", "respuesta" : "adios"},
    {"pregunta": "hola", "respuesta" : "adios"}
];

faq.forEach(element => {
    agregarPregunta(element)
});