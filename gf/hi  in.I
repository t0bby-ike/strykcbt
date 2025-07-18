:root {
    --primary-color: #3a506b;
    --secondary-color: #5bc0be;
    --accent-color: #e74c3c;
    --light-color: #ecf0f1;
    --dark-color: #1c2541;
    --success-color: #27ae60;
    --warning-color: #f39c12;
    --danger-color: #e74c3c;
    --footer-color: #34495e;
    --bg-color: #f5f7fa;
    --text-color: #333;
    --card-bg: #fff;
    --shadow-color: rgba(0, 0, 0, 0.1);
    --answered-color: #5bc0be;
    --unanswered-color: #e0e0e0;
    --ad-bg: #f8f9fa;
}

[data-theme="dark"] {
    --primary-color: #5bc0be;
    --secondary-color: #3a506b;
    --bg-color: #121212;
    --text-color: #f5f5f5;
    --card-bg: #1e1e1e;
    --shadow-color: rgba(0, 0, 0, 0.3);
    --footer-color: #0d0d0d;
    --ad-bg: #2c3e50;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    transition: background-color 0.3s, color 0.3s, transform 0.3s, opacity 0.3s;
}

body {
    font-family: 'Roboto', sans-serif;
    background-color: var(--bg-color);
    color: var(--text-color);
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    padding-top: 80px;
    background-image: url('../images/bg-pattern.png');
}

[data-theme="dark"] body {
    background-image: url('../images/bg-pattern-dark.png');
}

/* Header Styles */
.main-header {
    background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
    color: white;
    padding: 15px 0 0;
    box-shadow: 0 4px 12px var(--shadow-color);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
    animation: slideDown 0.5s ease-out;
}

@keyframes slideDown {
    from { transform: translateY(-100%); }
    to { transform: translateY(0); }
}

.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.logo-container {
    display: flex;
    align-items: center;
    gap: 15px;
}

.logo-icon {
    font-size: 2.2rem;
    color: #fff;
    animation: pulse 2s infinite;
}

@keyframes pulse {
    0% { transform: scale(1); }
    50% { transform: scale(1.1); }
    100% { transform: scale(1); }
}

.logo-text h1 {
    font-family: 'Playfair Display', serif;
    font-size: 1.5rem;
    margin: 0;
    line-height: 1.2;
}

.logo-text p {
    font-size: 0.8rem;
    opacity: 0.9;
    margin: 0;
}

.header-controls {
    display: flex;
    align-items: center;
    gap: 25px;
}

.theme-toggle {
    background: none;
    border: none;
    color: white;
    font-size: 1.2rem;
    cursor: pointer;
    transition: transform 0.3s;
}

.theme-toggle:hover {
    transform: rotate(30deg);
}

.user-info {
    display: flex;
    align-items: center;
    gap: 8px;
    font-size: 0.9rem;
}

.user-info i {
    font-size: 1.4rem;
}

.header-timer {
    background: rgba(255, 255, 255, 0.15);
    padding: 8px 15px;
    border-radius: 50px;
    display: flex;
    align-items: center;
    gap: 8px;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s;
}

.header-timer:hover {
    background: rgba(255, 255, 255, 0.25);
    transform: scale(1.05);
}

.header-timer.warning {
    background: rgba(255, 165, 0, 0.3);
    color: #ffcc00;
}

.header-timer.danger {
    background: rgba(231, 76, 60, 0.3);
    color: #ff6b6b;
    animation: pulse 1s infinite;
}

.header-progress {
    height: 4px;
    background: rgba(255, 255, 255, 0.2);
    margin-top: 15px;
}

.header-progress .progress-bar {
    height: 100%;
    background: linear-gradient(90deg, #f1c40f, #e67e22);
    width: 0%;
    transition: width 0.3s ease;
}

.container {
    width: 100%;
    max-width: 1200px;
    padding: 20px;
    margin: 0 auto;
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Book Cover Styling */
.book-cover {
    width: 90%;
    max-width: 600px;
    height: 400px;
    background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
    border-radius: 5px 15px 15px 5px;
    box-shadow: 0 20px 40px var(--shadow-color),
                0 0 0 10px var(--card-bg),
                0 0 0 12px #ddd,
                0 0 30px rgba(0, 0, 0, 0.1) inset;
    padding: 40px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    color: white;
    position: relative;
    transform-style: preserve-3d;
    transition: all 1s ease;
    cursor: pointer;
    z-index: 10;
    margin: 0 auto;
    animation: fadeIn 1s ease-out;
}

.book-cover::before {
    content: '';
    position: absolute;
    top: 0;
    left: 10px;
    width: 30px;
    height: 100%;
    background: rgba(255, 255, 255, 0.1);
    transform: rotateY(45deg);
    transform-origin: left;
    filter: blur(5px);
}

.book-cover h1 {
    font-family: 'Playfair Display', serif;
    font-size: 2.2rem;
    margin-bottom: 20px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
    animation: fadeInUp 1s ease-out;
}

@keyframes fadeInUp {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

.book-cover p {
    font-size: 1.1rem;
    margin-bottom: 30px;
    opacity: 0.9;
    animation: fadeInUp 1s ease-out 0.2s forwards;
    opacity: 0;
}

.book-cover .btn {
    background-color: white;
    color: var(--primary-color);
    border: none;
    padding: 10px 25px;
    border-radius: 30px;
    font-size: 1rem;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    animation: fadeInUp 1s ease-out 0.4s forwards;
    opacity: 0;
}

.book-cover .btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
}

/* Book Open Animation */
.book-open {
    animation: bookOpen 1.5s ease forwards;
}

@keyframes bookOpen {
    0% { transform: perspective(1000px) rotateY(0deg); }
    50% { transform: perspective(1000px) rotateY(-90deg); opacity: 0.7; }
    100% { transform: perspective(1000px) rotateY(-180deg); opacity: 0; display: none; }
}

/* Quiz Book Styling */
.quiz-book {
    width: 90%;
    max-width: 800px;
    background-color: var(--card-bg);
    border-radius: 5px;
    box-shadow: 0 10px 30px var(--shadow-color),
                0 0 0 1px rgba(0, 0, 0, 0.1);
    padding: 0;
    position: relative;
    display: none;
    opacity: 0;
    transform: scale(0.9);
    transition: all 0.5s ease;
    overflow: hidden;
    margin: 0 auto;
    min-height: 500px;
}

.quiz-book.active {
    display: block;
    opacity: 1;
    transform: scale(1);
    animation: fadeIn 0.5s ease forwards;
}

@keyframes fadeIn {
    from { opacity: 0; transform: scale(0.9); }
    to { opacity: 1; transform: scale(1); }
}

.page {
    padding: 30px;
    position: relative;
    min-height: 500px;
    transform-style: preserve-3d;
    transform-origin: left center;
}

.page.flipping {
    animation: pageFlip 1.2s ease forwards;
}

@keyframes pageFlip {
    0% { transform: perspective(1000px) rotateY(0deg); }
    50% { transform: perspective(1000px) rotateY(-90deg); opacity: 0.5; }
    100% { transform: perspective(1000px) rotateY(-180deg); opacity: 1; }
}

/* Ad Container */
.ad-container {
    background-color: var(--ad-bg);
    border-radius: 8px;
    padding: 15px;
    margin: 20px auto;
    max-width: 800px;
    box-shadow: 0 2px 10px var(--shadow-color);
    text-align: center;
    border: 1px solid rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
}

.ad-container:hover {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px var(--shadow-color);
}

.ad-content h3 {
    color: var(--text-color);
    margin-bottom: 10px;
    font-size: 1rem;
    font-weight: 500;
}

.ad-content p {
    font-size: 0.8rem;
    color: var(--text-color);
    opacity: 0.7;
    margin-top: 10px;
}

#adPlaceholder {
    min-height: 90px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: rgba(0, 0, 0, 0.05);
    border-radius: 4px;
    padding: 10px;
    color: var(--text-color);
}

/* Footer Styles */
.main-footer {
    background-color: var(--footer-color);
    color: white;
    padding: 30px 0;
    text-align: center;
    margin-top: auto;
    animation: fadeIn 0.5s ease-out;
}

.footer-content {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 15px;
}

.footer-brand {
    font-family: 'Playfair Display', serif;
    font-size: 1.5rem;
    margin-bottom: 10px;
}

.footer-contact {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-bottom: 15px;
}

.footer-contact a {
    color: white;
    text-decoration: none;
    transition: all 0.3s ease;
}

.footer-contact a:hover {
    color: #25D366;
    transform: translateY(-2px);
}

.footer-copyright {
    font-size: 0.9rem;
    opacity: 0.8;
}

/* Quiz Components */
.timer-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 25px;
    position: relative;
}

.progress-container {
    width: 100%;
    height: 8px;
    background-color: #f0f0f0;
    border-radius: 10px;
    margin-bottom: 25px;
    overflow: hidden;
}

.progress-bar {
    height: 100%;
    background: linear-gradient(90deg, var(--secondary-color) 0%, var(--primary-color) 100%);
    border-radius: 10px;
    width: 0%;
    transition: width 0.5s ease;
    position: relative;
}

.question-number {
    font-size: 0.9rem;
    color: #7f8c8d;
    margin-bottom: 10px;
    font-weight: 500;
}

.question {
    font-size: 1.4rem;
    font-weight: 500;
    margin-bottom: 25px;
    color: var(--text-color);
    line-height: 1.5;
}

.options {
    display: grid;
    grid-template-columns: 1fr;
    gap: 15px;
    margin-bottom: 30px;
}

.option {
    background-color: rgba(0, 0, 0, 0.05);
    padding: 18px 20px;
    border-radius: 8px;
    cursor: pointer;
    transition: all 0.3s ease;
    position: relative;
    padding-left: 60px;
    border: 2px solid transparent;
}

.option:hover {
    background-color: rgba(0, 0, 0, 0.1);
    transform: translateY(-2px);
}

.option.selected {
    background-color: rgba(91, 192, 190, 0.1);
    border-color: var(--secondary-color);
}

.option.correct {
    background-color: rgba(39, 174, 96, 0.1);
    border-color: var(--success-color);
}

.option.incorrect {
    background-color: rgba(231, 76, 60, 0.1);
    border-color: var(--danger-color);
}

.checkmark {
    position: absolute;
    top: 50%;
    left: 20px;
    transform: translateY(-50%);
    height: 22px;
    width: 22px;
    background-color: var(--card-bg);
    border-radius: 50%;
    border: 2px solid #bdc3c7;
    transition: all 0.3s ease;
}

.option.selected .checkmark {
    border-color: var(--secondary-color);
    background-color: var(--secondary-color);
}

.option.selected .checkmark::after {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 10px;
    height: 10px;
    border-radius: 50%;
    background: white;
}

/* Question Navigation */
.question-navigation {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin-bottom: 30px;
    justify-content: center;
}

.question-nav-item {
    width: 40px;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: var(--unanswered-color);
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease;
    font-weight: 500;
    color: var(--text-color);
    border: 2px solid transparent;
}

.question-nav-item:hover {
    transform: translateY(-3px);
    box-shadow: 0 3px 10px var(--shadow-color);
}

.question-nav-item.answered {
    background-color: var(--answered-color);
    color: white;
}

.question-nav-item.current {
    border-color: var(--primary-color);
    transform: scale(1.1);
}

.navigation {
    display: flex;
    justify-content: space-between;
    margin-top: 30px;
}

.btn {
    background-color: var(--secondary-color);
    color: white;
    border: none;
    padding: 12px 25px;
    border-radius: 50px;
    font-size: 1rem;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 5px 15px var(--shadow-color);
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
}

.btn:hover {
    background-color: var(--primary-color);
    transform: translateY(-2px);
    box-shadow: 0 8px 20px var(--shadow-color);
}

.btn:active {
    transform: translateY(0);
}

.submit-btn {
    background-color: var(--success-color);
}

/* Results Container */
.result-container {
    width: 90%;
    max-width: 800px;
    background-color: var(--card-bg);
    border-radius: 10px;
    box-shadow: 0 10px 30px var(--shadow-color);
    padding: 40px;
    display: none;
    text-align: center;
    animation: fadeIn 0.5s ease forwards;
    margin: 0 auto;
}

.score {
    font-size: 2.5rem;
    font-weight: 700;
    color: var(--secondary-color);
    margin-bottom: 20px;
    position: relative;
    display: inline-block;
}

.score::after {
    content: '';
    position: absolute;
    bottom: -10px;
    left: 50%;
    transform: translateX(-50%);
    width: 100px;
    height: 4px;
    background: linear-gradient(90deg, var(--secondary-color) 0%, var(--primary-color) 100%);
    border-radius: 2px;
}

.result-message {
    font-size: 1.1rem;
    margin-bottom: 30px;
    line-height: 1.6;
}

.summary {
    margin-top: 40px;
    text-align: left;
    max-height: 400px;
    overflow-y: auto;
    padding-right: 10px;
}

.summary-item {
    padding: 20px;
    border-bottom: 1px solid rgba(0, 0, 0, 0.1);
    margin-bottom: 15px;
    border-radius: 8px;
    transition: all 0.3s ease;
}

.summary-item:hover {
    box-shadow: 0 5px 15px var(--shadow-color);
    transform: translateY(-2px);
}

.summary-item.correct {
    background-color: rgba(39, 174, 96, 0.1);
}

.summary-item.incorrect {
    background-color: rgba(231, 76, 60, 0.1);
}

.question-text {
    font-weight: 500;
    margin-bottom: 10px;
    color: var(--text-color);
}

.user-answer {
    color: var(--danger-color);
    font-weight: 500;
}

.correct-answer {
    color: var(--success-color);
    font-weight: 500;
}

/* Modal Styles */
.modal-overlay {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.5);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1000;
    opacity: 0;
    visibility: hidden;
    transition: all 0.3s ease;
}

.modal-overlay.active {
    opacity: 1;
    visibility: visible;
}

.modal {
    background-color: var(--card-bg);
    border-radius: 10px;
    padding: 30px;
    width: 90%;
    max-width: 500px;
    box-shadow: 0 10px 30px var(--shadow-color);
    transform: translateY(-20px);
    transition: all 0.3s ease;
}

.modal-overlay.active .modal {
    transform: translateY(0);
}

.modal-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
}

.modal-title {
    font-size: 1.5rem;
    font-weight: 500;
    color: var(--text-color);
}

.close-modal {
    background: none;
    border: none;
    font-size: 1.5rem;
    cursor: pointer;
    color: #7f8c8d;
    transition: all 0.3s ease;
}

.close-modal:hover {
    color: var(--danger-color);
    transform: rotate(90deg);
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    margin-bottom: 8px;
    font-weight: 500;
    color: var(--text-color);
}

.form-control {
    width: 100%;
    padding: 12px 15px;
    border: 1px solid #ddd;
    border-radius: 8px;
    font-size: 1rem;
    transition: all 0.3s ease;
    background-color: var(--card-bg);
    color: var(--text-color);
}

.form-control:focus {
    border-color: var(--secondary-color);
    box-shadow: 0 0 0 3px rgba(91, 192, 190, 0.2);
    outline: none;
}

.modal-footer {
    display: flex;
    justify-content: flex-end;
    margin-top: 30px;
}

/* Tooltip Styles */
.tooltip {
    position: fixed;
    background-color: var(--primary-color);
    color: white;
    padding: 10px 15px;
    border-radius: 8px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    z-index: 1100;
    max-width: 250px;
    animation: bounce 2s infinite;
    display: none;
}

.tooltip p {
    margin: 0;
    font-size: 0.9rem;
}

.tooltip-arrow {
    position: absolute;
    width: 0;
    height: 0;
    border-left: 10px solid transparent;
    border-right: 10px solid transparent;
    border-top: 10px solid var(--primary-color);
    bottom: -10px;
    left: 50%;
    transform: translateX(-50%);
}

@keyframes bounce {
    0%, 20%, 50%, 80%, 100% { transform: translateY(0); }
    40% { transform: translateY(-10px); }
    60% { transform: translateY(-5px); }
}

/* Responsive Design */
@media (max-width: 768px) {
    .book-cover, .quiz-book {
        width: 95%;
        height: auto;
        min-height: 400px;
    }

    .book-cover h1 {
        font-size: 1.8rem;
    }

    .question {
        font-size: 1.2rem;
    }

    .option {
        padding: 15px 15px 15px 50px;
    }

    .checkmark {
        left: 15px;
    }

    .btn {
        padding: 10px 20px;
    }
    
    .question-nav-item {
        width: 35px;
        height: 35px;
        font-size: 0.9rem;
    }
}

@media (max-width: 480px) {
    body {
        padding-top: 70px;
    }

    .book-cover, .quiz-book {
        width: 100%;
        padding: 20px;
        min-height: 350px;
    }

    .book-cover h1 {
        font-size: 1.5rem;
    }

    .book-cover p {
        font-size: 1rem;
    }

    .navigation {
        flex-direction: column;
        gap: 10px;
    }

    .btn {
        width: 100%;
    }

    .header-timer {
        padding: 6px 10px;
        font-size: 0.9rem;
    }
    
    .question-navigation {
        gap: 5px;
    }
.ad-rotation-container {
    width: 100%;
    min-height: 250px; /* Adjust based on your ad sizes */
    margin: 20px 0;
    border: 1px solid #eee;
    overflow: hidden;
    position: relative;
}
    
    .question-nav-item {
        width: 30px;
        height: 30px;
        font-size: 0.8rem;
    }
/* Circular Iframe Container */
.iframe-container {
    display: flex;
    justify-content: space-around;
    align-items: center;
    width: 100%;
    max-width: 100%;
    margin: 30px auto;
    padding: 0 10px;
    overflow-x: auto;
    scroll-snap-type: x mandatory;
    -webkit-overflow-scrolling: touch;
}

/* Hide scrollbar but keep functionality */
.iframe-container::-webkit-scrollbar {
    display: none;
}

/* Each Circle Iframe */
.iframe-wrapper {
    position: relative;
    min-width: 100px;
    min-height: 100px;
    width: 22vw;
    height: 22vw;
    max-width: 180px;
    max-height: 180px;
    border-radius: 50%;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    border: 3px solid #2c3e50;
    background: white;
    flex-shrink: 0;
    scroll-snap-align: center;
    margin: 0 10px;
    transition: all 0.3s ease;
}

/* Ensure iframes fill their containers */
.iframe-wrapper iframe {
    width: 100%;
    height: 100%;
    border: none;
    opacity: 0;
    transition: opacity 0.5s ease;
}

/* Loading animation */
@keyframes loadingPulse {
    0% { transform: scale(0.95); opacity: 0.7; }
    50% { transform: scale(1.05); opacity: 1; }
    100% { transform: scale(0.95); opacity: 0.7; }
}

.loading-circle {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    background: rgba(255,255,255,0.9);
    animation: loadingPulse 1.5s infinite;
}

.loading-circle::after {
    content: '';
    width: 30%;
    height: 30%;
    border: 3px solid #2c3e50;
    border-top-color: transparent;
    border-radius: 50%;
    animation: spin 1s linear infinite;
}

@keyframes spin {
    to { transform: rotate(360deg); }
}

/* Peeping animation for desktop */
@media (hover: hover) {
    .iframe-wrapper:hover::after {
        content: '🔍';
        position: absolute;
        bottom: -20px;
        left: 50%;
        transform: translateX(-50%);
        font-size: 24px;
        animation: peep 0.8s ease-out;
    }

    @keyframes peep {
        0% { transform: translate(-50%, 100%); opacity: 0; }
        100% { transform: translate(-50%, 0); opacity: 1; }
    }
}

/* Mobile tap animation */
.iframe-wrapper:active {
    transform: scale(0.95);
}

/* Label styling */
.iframe-label {
    position: absolute;
    bottom: -25px;
    left: 0;
    width: 100%;
    text-align: center;
    font-size: 12px;
    color: #2c3e50;
    font-weight: 500;
}

/* Dark mode adjustments */
.dark-mode .iframe-wrapper {
    border-color: #e74c3c;
    background: #2c3e50;
}

.dark-mode .loading-circle {
    background: rgba(44, 62, 80, 0.9);
}

.dark-mode .loading-circle::after {
    border-color: #e74c3c;
    border-top-color: transparent;
}

/* Extra small devices (phones) */
@media (max-width: 480px) {
    .iframe-wrapper {
        min-width: 80px;
        min-height: 80px;
        margin: 0 5px;
    }
    
    .iframe-label {
        font-size: 10px;
        bottom: -20px;
    }
}