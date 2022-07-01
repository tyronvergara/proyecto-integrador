function agregarPregunta(question){
const itemHTML =           
                    `<div class="accordion" id="preguntas-frecuentes">
                    <div class="card">
                            <div class="card-header" id="headingOne">
                                <h2 class="mb-0">
                                    <button  class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <i class="bi bi-patch-question-fill text-lg" ></i>
                                        ${question.pregunta}
                                        </button>
                                </h2>
                                    </div>
                                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="container">
                                        <div class="row justify-content-md-left">
                                            <div class="col col-lg-2">
                                            <i class="bi bi-arrow-right-square-fill"></i>
                                            </div>
                                            <div class="col-md-auto">
                                            ${question.respuesta} 
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                    </div>
                            </div>`

const itemsContainer = document.getElementById("preguntas-frecuentes");
itemsContainer.innerHTML += itemHTML;
} //Funcion agreagar pregunta

// let questions = {"pregunta": "hola", "respuesta" : "adios"}; 
// agregarPregunta(questions);
// console.log(questions.pregunta);


let faq = [
    {"pregunta": "hola", "respuesta" : "adios"},
    {"pregunta": "hola", "respuesta" : "adios"},
    {"pregunta": "hola", "respuesta" : "adios"}
];

faq.forEach(element => {
    agregarPregunta(element)
});