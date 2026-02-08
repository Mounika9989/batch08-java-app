// animations.js - Premium Animation Library
document.addEventListener('DOMContentLoaded', function() {
    // Remove loading screen
    setTimeout(() => {
        const loadingScreen = document.querySelector('.loading-screen');
        if (loadingScreen) {
            loadingScreen.style.opacity = '0';
            setTimeout(() => {
                loadingScreen.style.display = 'none';
            }, 500);
        }
    }, 1500);

    // Initialize all animations
    initParticles();
    initScrollAnimations();
    initHoverEffects();
    initCountdown();
    initToolCards();
    initParallax();
    initTypewriter();
    initInteractiveElements();
});

// Particle System
function initParticles() {
    const particleContainer = document.createElement('div');
    particleContainer.className = 'particle-container';
    particleContainer.style.position = 'fixed';
    particleContainer.style.top = '0';
    particleContainer.style.left = '0';
    particleContainer.style.width = '100%';
    particleContainer.style.height = '100%';
    particleContainer.style.pointerEvents = 'none';
    particleContainer.style.zIndex = '-1';
    document.body.appendChild(particleContainer);

    // Create particles
    for (let i = 0; i < 50; i++) {
        createParticle(particleContainer);
    }

    function createParticle(container) {
        const particle = document.createElement('div');
        particle.className = 'particle';
        
        // Random properties
        const size = Math.random() * 4 + 1;
        const x = Math.random() * 100;
        const y = Math.random() * 100;
        const duration = Math.random() * 20 + 10;
        const delay = Math.random() * 5;
        
        // Color variations
        const colors = ['#00f3ff', '#b967ff', '#ff2a6d', '#00ff9d', '#ffde59'];
        const color = colors[Math.floor(Math.random() * colors.length)];
        
        // Apply styles
        particle.style.cssText = `
            width: ${size}px;
            height: ${size}px;
            background: ${color};
            border-radius: 50%;
            position: absolute;
            top: ${y}vh;
            left: ${x}vw;
            opacity: ${Math.random() * 0.5 + 0.2};
            animation: particleFloat ${duration}s ease-in-out infinite;
            animation-delay: ${delay}s;
            filter: blur(${size / 2}px);
        `;
        
        container.appendChild(particle);
        
        // Add CSS animation
        if (!document.querySelector('#particle-animation')) {
            const style = document.createElement('style');
            style.id = 'particle-animation';
            style.textContent = `
                @keyframes particleFloat {
                    0%, 100% {
                        transform: translate(0, 0) scale(1);
                        opacity: 0.3;
                    }
                    25% {
                        transform: translate(${Math.random() * 50 - 25}px, ${Math.random() * 50 - 25}px) scale(1.2);
                        opacity: 0.6;
                    }
                    50% {
                        transform: translate(${Math.random() * 50 - 25}px, ${Math.random() * 50 - 25}px) scale(1);
                        opacity: 0.3;
                    }
                    75% {
                        transform: translate(${Math.random() * 50 - 25}px, ${Math.random() * 50 - 25}px) scale(0.8);
                        opacity: 0.6;
                    }
                }
            `;
            document.head.appendChild(style);
        }
    }
}

// Scroll Animations with Intersection Observer
function initScrollAnimations() {
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('animated');
                
                // Add staggered animations for tool badges
                if (entry.target.classList.contains('tool-badge')) {
                    entry.target.style.animationPlayState = 'running';
                }
                
                // Animate timeline items
                if (entry.target.classList.contains('timeline-item')) {
                    setTimeout(() => {
                        entry.target.style.opacity = '1';
                        entry.target.style.transform = 'translateX(0)';
                    }, entry.target.dataset.index * 200);
                }
            }
        });
    }, {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    });

    // Observe all elements that need animation
    document.querySelectorAll('.animate-on-scroll').forEach(el => observer.observe(el));
    document.querySelectorAll('.tool-badge').forEach(el => observer.observe(el));
    document.querySelectorAll('.timeline-item').forEach((el, index) => {
        el.dataset.index = index;
        el.style.opacity = '0';
        el.style.transform = 'translateX(-50px)';
        el.style.transition = 'all 0.6s cubic-bezier(0.4, 0, 0.2, 1)';
        observer.observe(el);
    });
}

// Hover Effects
function initHoverEffects() {
    // Tool cards 3D effect
    document.querySelectorAll('.tool-card').forEach(card => {
        card.addEventListener('mousemove', (e) => {
            const rect = card.getBoundingClientRect();
            const x = e.clientX - rect.left;
            const y = e.clientY - rect.top;
            
            const centerX = rect.width / 2;
            const centerY = rect.height / 2;
            
            const rotateY = (x - centerX) / 25;
            const rotateX = (centerY - y) / 25;
            
            card.style.transform = `perspective(1000px) rotateX(${rotateX}deg) rotateY(${rotateY}deg) translateY(-20px)`;
        });
        
        card.addEventListener('mouseleave', () => {
            card.style.transform = 'perspective(1000px) rotateX(0) rotateY(0) translateY(0)';
            setTimeout(() => {
                card.style.transform = '';
            }, 300);
        });
    });

    // Interactive buttons
    document.querySelectorAll('.enroll-button, .social-icon').forEach(button => {
        button.addEventListener('mouseenter', () => {
            createRipple(button);
        });
    });
}

// Ripple Effect
function createRipple(element) {
    const ripple = document.createElement('span');
    const rect = element.getBoundingClientRect();
    const size = Math.max(rect.width, rect.height);
    const x = event.clientX - rect.left - size / 2;
    const y = event.clientY - rect.top - size / 2;
    
    ripple.style.cssText = `
        position: absolute;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.3);
        transform: scale(0);
        animation: ripple-animation 0.6s linear;
        width: ${size}px;
        height: ${size}px;
        top: ${y}px;
        left: ${x}px;
        pointer-events: none;
    `;
    
    element.appendChild(ripple);
    
    setTimeout(() => {
        ripple.remove();
    }, 600);
}

// Countdown Timer with Digital Effect
function initCountdown() {
    const countdownDate = new Date('2026-02-12T17:00:00').getTime();
    
    function updateCountdown() {
        const now = new Date().getTime();
        const distance = countdownDate - now;
        
        if (distance > 0) {
            const days = Math.floor(distance / (1000 * 60 * 60 * 24));
            const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((distance % (1000 * 60)) / 1000);
            
            // Digital flip effect
            updateDigitalClock('days', days);
            updateDigitalClock('hours', hours);
            updateDigitalClock('minutes', minutes);
            updateDigitalClock('seconds', seconds);
        } else {
            document.querySelectorAll('.time-value').forEach(el => {
                el.textContent = '00';
            });
        }
    }
    
    function updateDigitalClock(id, value) {
        const element = document.getElementById(id);
        if (!element) return;
        
        const currentValue = parseInt(element.textContent) || 0;
        if (currentValue !== value) {
            // Add flip animation
            element.classList.remove('flip');
            void element.offsetWidth; // Trigger reflow
            element.textContent = value.toString().padStart(2, '0');
            element.classList.add('flip');
            
            // Remove animation class after animation completes
            setTimeout(() => {
                element.classList.remove('flip');
            }, 600);
        }
    }
    
    // Add flip animation CSS
    if (!document.querySelector('#flip-animation')) {
        const style = document.createElement('style');
        style.id = 'flip-animation';
        style.textContent = `
            @keyframes flip {
                0% { transform: rotateX(0); }
                50% { transform: rotateX(90deg); }
                100% { transform: rotateX(0); }
            }
            .flip {
                animation: flip 0.6s cubic-bezier(0.4, 0, 0.2, 1);
            }
        `;
        document.head.appendChild(style);
    }
    
    updateCountdown();
    setInterval(updateCountdown, 1000);
}

// Interactive Tool Cards
function initToolCards() {
    const toolCards = document.querySelectorAll('.tool-card');
    
    toolCards.forEach((card, index) => {
        // Add data attribute for animation delay
        card.style.animationDelay = `${index * 0.1}s`;
        
        // Add click effect
        card.addEventListener('click', () => {
            // Add active state
            card.classList.toggle('active');
            
            // Create ripple effect
            createRipple(card);
            
            // Toggle expanded view
            const topics = card.querySelector('.tool-topics');
            if (topics) {
                topics.style.maxHeight = topics.style.maxHeight ? null : topics.scrollHeight + 'px';
            }
        });
    });
}

// Parallax Effect
function initParallax() {
    const parallaxElements = document.querySelectorAll('.parallax');
    
    window.addEventListener('scroll', () => {
        const scrolled = window.pageYOffset;
        
        parallaxElements.forEach(element => {
            const rate = element.dataset.rate || 0.5;
            const yPos = -(scrolled * rate);
            element.style.transform = `translateY(${yPos}px)`;
        });
    });
}

// Typewriter Effect for Hero
function initTypewriter() {
    const heroTitle = document.querySelector('.hero-title');
    if (!heroTitle) return;
    
    const text = heroTitle.textContent;
    heroTitle.textContent = '';
    let i = 0;
    
    function typeWriter() {
        if (i < text.length) {
            heroTitle.textContent += text.charAt(i);
            i++;
            
            // Random speed variation for natural typing
            const speed = Math.random() * 50 + 50;
            setTimeout(typeWriter, speed);
        } else {
            // Start cursor blink after typing completes
            startCursorBlink();
        }
    }
    
    function startCursorBlink() {
        const cursor = document.createElement('span');
        cursor.className = 'cursor';
        cursor.textContent = '|';
        cursor.style.animation = 'blink 1s infinite';
        heroTitle.appendChild(cursor);
        
        // Add cursor animation
        if (!document.querySelector('#cursor-animation')) {
            const style = document.createElement('style');
            style.id = 'cursor-animation';
            style.textContent = `
                @keyframes blink {
                    0%, 50% { opacity: 1; }
                    51%, 100% { opacity: 0; }
                }
                .cursor {
                    display: inline-block;
                    color: var(--neon-blue);
                    font-weight: 300;
                }
            `;
            document.head.appendChild(style);
        }
    }
    
    // Start typing after a delay
    setTimeout(typeWriter, 1000);
}

// Interactive Elements
function initInteractiveElements() {
    // Add audio feedback for interactions
    const audioContext = new (window.AudioContext || window.webkitAudioContext)();
    
    function playSound(frequency, duration, type = 'sine') {
        if (audioContext.state === 'suspended') {
            audioContext.resume();
        }
        
        const oscillator = audioContext.createOscillator();
        const gainNode = audioContext.createGain();
        
        oscillator.connect(gainNode);
        gainNode.connect(audioContext.destination);
        
        oscillator.frequency.value = frequency;
        oscillator.type = type;
        
        gainNode.gain.setValueAtTime(0.1, audioContext.currentTime);
        gainNode.gain.exponentialRampToValueAtTime(0.01, audioContext.currentTime + duration);
        
        oscillator.start(audioContext.currentTime);
        oscillator.stop(audioContext.currentTime + duration);
    }
    
    // Add sound to interactions
    document.querySelectorAll('.tool-card, .enroll-button, .social-icon').forEach(el => {
        el.addEventListener('mouseenter', () => {
            playSound(800, 0.1);
        });
        
        el.addEventListener('click', () => {
            playSound(1200, 0.2, 'square');
        });
    });
    
    // Add keyboard navigation
    document.addEventListener('keydown', (e) => {
        switch(e.key) {
            case 'ArrowDown':
                window.scrollBy({ top: 100, behavior: 'smooth' });
                playSound(600, 0.1);
                break;
            case 'ArrowUp':
                window.scrollBy({ top: -100, behavior: 'smooth' });
                playSound(600, 0.1);
                break;
        }
    });
    
    // Add mouse wheel effect
    let lastScroll = 0;
    window.addEventListener('wheel', (e) => {
        const currentTime = Date.now();
        if (currentTime - lastScroll > 100) {
            playSound(400, 0.05);
            lastScroll = currentTime;
        }
    });
}

// Add CSS for additional animations
function addAnimationStyles() {
    const style = document.createElement('style');
    style.textContent = `
        /* Loading animation */
        @keyframes loadingSpin {
            0% { transform: rotate(0deg) scale(1); }
            50% { transform: rotate(180deg) scale(1.1); }
            100% { transform: rotate(360deg) scale(1); }
        }
        
        @keyframes loadingText {
            0%, 100% { opacity: 0.5; }
            50% { opacity: 1; }
        }
        
        /* Ripple animation */
        @keyframes ripple-animation {
            to {
                transform: scale(4);
                opacity: 0;
            }
        }
        
        /* Tool card expanded view */
        .tool-topics {
            transition: max-height 0.6s cubic-bezier(0.4, 0, 0.2, 1);
            overflow: hidden;
        }
        
        /* Active state for tool cards */
        .tool-card.active {
            transform: scale(1.05) !important;
            box-shadow: 0 0 50px rgba(0, 243, 255, 0.6) !important;
        }
        
        /* Smooth transitions */
        * {
            scroll-behavior: smooth;
        }
    `;
    document.head.appendChild(style);
}

// Initialize animation styles
addAnimationStyles();