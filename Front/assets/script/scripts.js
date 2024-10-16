let currentSlide = 0;
const slides = document.querySelectorAll('.slide');

function showSlide(index) {
    slides.forEach((slide, i) => {
        slide.style.display = (i === index) ? 'block' : 'none';
    });
}

function nextSlide() {
    currentSlide = (currentSlide + 1) % slides.length;
    showSlide(currentSlide);
}

// Muda o slide a cada 10 segundos
setInterval(nextSlide, 10000);

window.onload = function () {
    showSlide(currentSlide);
};




// Variáveis globais para o mapa e os marcadores
let map;
let markers = [];  // Para armazenar os marcadores

// Inicializando o mapa com Leaflet
function initializeMap() {
    // Criar o mapa centrado em São Paulo (você pode ajustar para outra localização se necessário)
    map = L.map('mapa-pontos').setView([-23.55052, -46.633308], 12);

    // Adiciona o tile layer do OpenStreetMap
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);
    
    document.getElementById('form-pesquisa').addEventListener('submit', function (event) {
        event.preventDefault();
        let cep = document.getElementById('cep').value;
        buscarPontosColeta(cep);
    });
}

// Função para limpar o mapa removendo os marcadores antigos
function clearMap() {
    markers.forEach(marker => map.removeLayer(marker));  // Remove cada marcador do mapa
    markers = [];  // Limpa o array de marcadores
}

// Função para adicionar um marcador no mapa usando Leaflet
function addMarkerToMap(latitude, longitude, nome, endereco) {
    const marker = L.marker([latitude, longitude]).addTo(map)
        .bindPopup(`<h3>${nome}</h3><p>${endereco}</p>`);
    
    markers.push(marker);  // Armazena o marcador no array de marcadores
}

// Função para buscar os pontos de coleta no backend e exibir no mapa
function buscarPontosColeta(cep) {
    const zona = document.getElementById('zona').value;
    const cidade = document.getElementById('cidade').value;

    // URL base do backend
    const baseUrl = 'http://localhost:8080/api/pontos-coleta';

    // Construir a URL de consulta ao backend
    let url = baseUrl;
    if (cep) {
        url += `/cep/${cep}`;
    } else if (zona) {
        url += `/zona/${zona}`;
    } else if (cidade) {
        url += `/cidade/${cidade}`;
    }

    // Fazer a requisição ao backend
    fetch(url)
        .then(response => {
            if (!response.ok) {
                throw new Error('Erro na requisição: ' + response.statusText);
            }
            return response.json();
        })
        .then(data => {
            console.log('Dados recebidos do backend:', data);
            clearMap();  // Limpa os marcadores anteriores do mapa

            // Adicionar os novos pontos de coleta ao mapa
            data.forEach(ponto => {
                addMarkerToMap(ponto.latitude / 1000000, ponto.longitude / 1000000, ponto.nome, ponto.endereco);
            });
        })
        .catch(error => console.error('Erro ao buscar pontos de coleta:', error));
}

// Adiciona um event listener para detectar o scroll
window.addEventListener('scroll', function() {
    var header = document.getElementById('menu_header');

    // Se o usuário rolar mais que 1px, aplica a classe "scrolled"
    if (window.scrollY > 1) {
        header.classList.add('scrolled');
    } else {
        header.classList.remove('scrolled');
    }
});

// Inicialize o mapa ao carregar a página
window.onload = function () {
    initializeMap();
};
