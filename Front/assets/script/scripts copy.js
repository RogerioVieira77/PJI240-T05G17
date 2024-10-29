let currentSlide = 0;
const slides = document.querySelectorAll('.slide');
const htmlLogradouro = document.querySelector("#logradouro");
const cepForm = document.querySelector(".pesquisa-cep");
const zonaForm = document.querySelector(".pesquisa-zona");

const mostrarPesquisaCep = () => {
	cepForm.style.display = "flex";
	zonaForm.style.display = "none";
}

const mostrarPesquisaZona = () => {
	cepForm.style.display = "none";
	zonaForm.style.display = "flex";
}

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


	document.querySelectorAll('#form-pesquisa').forEach(node => {
		node.addEventListener('submit', function(event) {
			event.preventDefault();
			let cep = document.getElementById('cep').value;
			buscarPontosColeta(cep);
		})
	});

}

// Função para limpar o mapa removendo os marcadores antigos
function clearMap() {
	markers.forEach(marker => map.removeLayer(marker));  // Remove cada marcador do mapa
	markers = [];  // Limpa o array de marcadores
}

function buscarPontosColeta(cep) {
	const zona = document.getElementById('zona').value;
	const cidade = document.getElementById('cidade').value;
	const baseUrl = 'http://4.228.51.99:8080/api/pontos-coleta';
	let url = baseUrl;

	// Mantendo a lógica de construção da URL
	if (cep) url += `/cidade/São Paulo`;  // Traz todos os pontos da cidade para filtrar
	else if (zona) url += `/zona/${zona}`;
	else if (cidade) url += `/cidade/${cidade}`;

	fetch(url)
		.then(response => {
			if (!response.ok) throw new Error('Erro na requisição: ' + response.statusText);
			return response.json();
		})
		.then(data => {
			clearMap();

			// Se o CEP foi fornecido, filtra os pontos próximos
			const pontosFiltrados = cep ? filtrarPontosPorFaixaDeCep(data, cep, 2000) : data;

			if (cep) {
				const response = fetch(`https://viacep.com.br/ws/${cep}/json/`).then(async (data) => {
					const jsonData = await data.json();
					htmlLogradouro.innerHTML = `${jsonData["logradouro"]}, ${jsonData["bairro"]}`
				});
			}

			// Adiciona os pontos filtrados no mapa
			pontosFiltrados.forEach(ponto => {
				const latitude = ajustarCoordenada(ponto.latitude);
				const longitude = ajustarCoordenada(ponto.longitude);
				console.log(`Latitude: ${latitude}, Longitude: ${longitude}`);

				addMarkerToMap(latitude, longitude, ponto.nome, ponto.endereco);
			});
		})
		.catch(error => console.error('Erro ao buscar pontos de coleta:', error));
}

// Função para ajustar a latitude e longitude se necessário
function ajustarCoordenada(valor) {
	const coordenada = parseFloat(valor);
	if (Math.abs(coordenada) > 90) {
		return coordenada / 1e7;  // Corrige coordenadas fora do intervalo normal
	}
	return parseFloat(coordenada.toFixed(6));
}

// Função para filtrar pontos próximos com base no CEP e uma faixa definida
function filtrarPontosPorFaixaDeCep(pontos, cep, faixa) {
	const cepInt = parseInt(cep, 10);  // Converte o CEP para inteiro
	return pontos.filter(ponto => {
		const cepPonto = parseInt(ponto.cep, 10);  // Converte o CEP do ponto para inteiro
		return Math.abs(cepPonto - cepInt) <= faixa;  // Retorna pontos dentro da faixa
	});
}



// Função para adicionar um marcador no mapa
function addMarkerToMap(latitude, longitude, nome, endereco) {
	const marker = L.marker([latitude, longitude]).addTo(map)
		.bindPopup(`<h3>${nome}</h3><p>${endereco}</p>`);

	markers.push(marker);  // Armazena o marcador no array de marcadores
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
window.addEventListener('load', function() {
	console.log(window.location.pathname);
	const pathname = window.location.pathname;

	if (pathname.includes("consulta.html")) {
		initializeMap();
	}

	if (pathname === "/index.html" || pathname === "/") {
		new Glide('.glide', {
			type: 'carousel',
			startAt: 0,
			perView: 1
		}).mount();
	}
});
