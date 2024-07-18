document.addEventListener("DOMContentLoaded", function() {
    const gridWrap = document.querySelector('.grid-wrap');
    for (let i = 0; i < 100; i++) {
        const drop = document.createElement('div');
        drop.classList.add('raindrop');
        drop.style.left = Math.random() * 100 + '%';
        drop.style.animationDuration = 0.5 + Math.random() * 0.5 + 's';
        drop.style.animationDelay = Math.random() * 1 + 's';
        gridWrap.appendChild(drop);
    }
});