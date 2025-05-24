// Add your JavaScript for interactivity here

document.addEventListener('DOMContentLoaded', () => {
    console.log('Portfolio website loaded with enhanced styling!');
    // You can add animations, dynamic content loading, or other interactive features here.
    // For example, reveal sections with a fade-in effect as the user scrolls.

    // Example of adding a class to trigger CSS animations:
    const sections = document.querySelectorAll('section');
    const fadeInThreshold = 0.5; // Percentage of the element that must be visible

    const fadeInObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('is-visible');
                // Optionally, stop observing once visible
                // observer.unobserve(entry.target);
            }
        });
    }, {
        threshold: fadeInThreshold
    });

    sections.forEach(section => {
        fadeInObserver.observe(section);
    });
});

// Add this CSS rule to your style.css to make the fade-in work:
// section {
//    opacity: 0;
//    transform: translateY(20px);
//    transition: opacity 0.6s ease-out, transform 0.6s ease-out;
// }

// section.is-visible {
//    opacity: 1;
//    transform: translateY(0);
// } 