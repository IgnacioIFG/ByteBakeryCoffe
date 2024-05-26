/**
 * 
 */
let currentIndex = 0;

function prevSlide() {
    if (currentIndex === 0) {
        currentIndex = document.querySelectorAll('.carousel2-item').length - 1;
    } else {
        currentIndex--;
    }
    updateSlide();
}

function nextSlide() {
    if (currentIndex === document.querySelectorAll('.carousel2-item').length - 1) {
        currentIndex = 0;
    } else {
        currentIndex++;
    }
    updateSlide();
}

function updateSlide() {
    const carouselInner = document.querySelector('.carousel2-inner');
    const itemWidth = document.querySelector('.carousel2-item').offsetWidth;
    carouselInner.style.transform = `translateX(-${currentIndex * itemWidth}px)`;
}

// Para manejar el redimensionamiento de la ventana y ajustar el ancho de cada diapositiva.
window.addEventListener('resize', updateSlide);

// Actualizar el carrusel cuando se carga la página.
document.addEventListener('DOMContentLoaded', updateSlide);


