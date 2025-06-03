var certas = 0;
var erradas = 0;
var Tempogasto

function plotar_grafico() {
    const label_quiz = ['certas', 'erradas'];
    
    const data_quiz = {
        labels: label_quiz,
        datasets: [{
            label: 'Resultado do Quiz',
            data: [certas, erradas],
            backgroundColor: [
                'rgba(75, 192, 192, 0.2)', // Verde claro
                'rgba(255, 99, 132, 0.2)'  // Vermelho claro
            ],
            borderColor: [
                'rgba(75, 192, 192, 1)',   // Verde forte
                'rgba(255, 99, 132, 1)'    // Vermelho forte
            ],
            borderWidth: 1
        }]
    };

    const config = {
        type: 'bar',
        data: data_quiz,
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true,
                    max: 15
                }
            }
        }
    };


    const ctx = document.getElementById('barChart').getContext('2d');
    const grafico_quiz = new Chart(ctx, config);
}
function obterDadosGrafico() {
    var texto_certas = document.getElementById('certas')
    var texto_erradas = document.getElementById('erros')
    var texto_Tempogasto = document.getElementById('Tempogasto')
    var idUsuario = sessionStorage.ID_USUARIO;

    fetch(`/medidas/ultimas/${idUsuario}`, { cache: 'no-store' })
        .then(function (response) {
            if (response.status === 204) {
                console.warn('Nenhum dado encontrado!');
                return null; // Não tenta parsear JSON
            }

            if (response.ok) {
                return response.json();
            } else {
                throw new Error('Erro na resposta da API');
            }
        })
        .then(function (response) {
            if (response) {
                // Verifica se veio algum dado
                if (response.length > 0) {
                    certas = response[0].certas;
                    erradas = response[0].erradas;
                    Tempogasto = response[0]['time(r.Tempogasto)'];
                    texto_certas.innerHTML = certas;
                    texto_erradas.innerHTML =erradas;
                    texto_Tempogasto.innerHTML =Tempogasto;
                    plotar_grafico();
                } else {
                    console.warn('Resposta JSON vazia');
                }
            }
        })
        .catch(function (error) {
            console.error(`Erro na obtenção dos dados p/ gráfico: ${error.message}`);
        });
}

window.addEventListener('load', obterDadosGrafico)