
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
function initializeMap() {
    let map = new google.maps.Map(document.getElementById('mapa-pontos'), {
        center: { lat: -23.55052, lng: -46.633308 }, // Coordenadas de exemplo (São Paulo)
        zoom: 12
    });

    let geocoder = new google.maps.Geocoder();

    document.getElementById('form-pesquisa').addEventListener('submit', function (event) {
        event.preventDefault();
        let cep = document.getElementById('cep').value;
        geocodeAddress(geocoder, map, cep);
    });
}

function geocodeAddress(geocoder, resultsMap, cep) {
    geocoder.geocode({ 'address': cep }, function (results, status) {
        if (status === 'OK') {
            resultsMap.setCenter(results[0].geometry.location);
            new google.maps.Marker({
                map: resultsMap,
                position: results[0].geometry.location
            });
        } else {
            alert('Geocode falhou: ' + status);
        }
    });
}

// Adiciona um event listener para detectar o scroll
window.addEventListener('scroll', function() {
    var header = document.getElementById('menu_header');

    // Se o usuário rolar mais que 50px, aplica a classe "scrolled"
    if (window.scrollY > 1) {
        header.classList.add('scrolled');
    } else {
        header.classList.remove('scrolled');
    }
});
