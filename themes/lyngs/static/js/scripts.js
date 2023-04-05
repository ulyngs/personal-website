function playGif(container) {
    const thumbnail = container.querySelector('.thumbnail');
    const playIcon = container.querySelector('.play-icon');
    const gif = container.querySelector('.gif');

    if (gif.style.display === 'block') {
        // Hide the GIF and display the thumbnail
        thumbnail.style.display = 'block';
        playIcon.style.display = 'block';
        gif.style.display = 'none';
    } else {
        // Hide the thumbnail and display the GIF
        thumbnail.style.display = 'none';
        playIcon.style.display = 'none';

        // Force the GIF to reload and play from the beginning
        const gifSrc = gif.getAttribute('src');
        gif.setAttribute('src', '');
        gif.setAttribute('src', gifSrc);

        gif.style.display = 'block';
    }
}
