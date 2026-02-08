<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.Year" %>
<!DOCTYPE html>
<html lang="en" data-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Batch 08 | DevOps Masterclass | Learn With KASTRO</title>
    
    <!-- Modern Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700;800;900&family=Exo+2:wght@300;400;500;600;700&family=Rajdhani:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome 6 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" type="image/x-icon" href="https://learnwithkastro.com/wp-content/uploads/2024/04/Learn-withn-5.png">
</head>
<body>
    <!-- Loading Screen -->
    <div class="loading-screen">
        <div class="loading-logo">
            <img src="https://learnwithkastro.com/wp-content/uploads/2024/04/Learn-withn-5.png" 
                 alt="Loading..." style="width: 100%; height: 100%; object-fit: contain;">
        </div>
        <div class="loading-text">INITIALIZING DEVOPS MASTERCLASS...</div>
    </div>

    <!-- Top Navigation -->
    <nav class="top-nav">
        <div class="container">
            <div class="nav-content">
                <a href="#" class="logo-brand">
                    <img src="https://learnwithkastro.com/wp-content/uploads/2024/04/Learn-withn-5.png" 
                         alt="Learn With KASTRO" class="brand-logo">
                    <span class="brand-name">LEARN WITH KASTRO</span>
                    <span class="batch-badge">BATCH 08</span>
                </a>
                
                <div class="nav-stats">
                    <div class="stat-item">
                        <span class="stat-value">2000+</span>
                        <span class="stat-label">Students</span>
                    </div>
                    
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-glow"></div>
        <div class="container">
            <div class="hero-content">
                <div class="hero-tagline">
                    <i class="fas fa-rocket"></i> PREMIUM DEVOPS TRAINING
                </div>
                
                <h1 class="hero-title">
                    Transform Your Career with <br>
                    Next-Gen DevOps Skills
                </h1>
                
                <div class="tech-stack">
                    <span class="tech-item">GitHub Actions</span>
                    <span class="tech-item">Jenkins</span>
                    <span class="tech-item">Docker</span>
                    <span class="tech-item">Kubernetes</span>
                    <span class="tech-item">Terraform</span>
                </div>
                
                <p class="hero-subtitle">
                    Master the complete CI/CD pipeline with hands-on projects, real-world scenarios, 
                    and industry best practices.
                </p>
                
                <div class="trainer-showcase animate-on-scroll">
                    <div class="trainer-avatar">
                        <div class="avatar-glow"></div>
                        <img src="https://learnwithkastro.com/wp-content/uploads/2025/09/Untitled-design-12.jpg" 
                             alt="KASTRO - Senior DevOps Engineer" class="trainer-img">
                    </div>
                    <div class="trainer-bio">
                        <h3>Your Mentor: KASTRO KIRAN V</h3>
                        <p class="trainer-title">
                            <i class="fas fa-crown"></i> PostDoc @ IIT-Tirupati | PhD | 6+ Years Experience in AWS & DevOps
                        </p>
                        <p class="trainer-desc">
                            Specialized in Cloud Architecture, Container Orchestration, and Infrastructure Automation. 
                            Trained 2000+ professionals with 98% student satisfaction.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Course Content -->
    <section class="container">
        <div class="section-header">
            <h2 class="section-title">
                <i class="fas fa-laptop-code"></i> Training Modules
            </h2>
            <p class="hero-subtitle">...</p>
        </div>
        
        <div class="tools-showcase">
            <!-- GitHub Actions Card -->
            <div class="tool-card animate-on-scroll">
                <div class="tool-icon">
                    <i class="fab fa-github"></i>
                </div>
                <h3>GitHub Actions</h3>
                <ul class="tool-topics">
                    <li>CI/CD Workflow Automation</li>
                    <li>Self-hosted Runners & Scalability</li>
                    <li>Matrix Builds & Parallel Jobs</li>
                    <li>Secrets & Environment Management</li>
                    <li>Custom Actions Development</li>
                    <li>Container Actions & Docker</li>
                    <li>Workflow Optimization</li>
                    <li>Security Scanning Integration</li>
                    <li>Enterprise Best Practices</li>
                    <li>Advanced Triggers & Events</li>
                </ul>
            </div>

            <!-- Jenkins Card -->
            <div class="tool-card animate-on-scroll">
                <div class="tool-icon">
                    <i class="fab fa-jenkins"></i>
                </div>
                <h3>Jenkins</h3>
                <ul class="tool-topics">
                    <li>Master-Slave Architecture</li>
                    <li>Pipeline as Code (Jenkinsfile)</li>
                    <li>Declarative vs Scripted Pipelines</li>
                    <li>Shared Libraries & Custom Functions</li>
                    <li>Blue Ocean UI & Pipeline Visualization</li>
                    <li>Plugin Development & Management</li>
                    <li>Distributed Builds Optimization</li>
                    <li>RBAC & Security Hardening</li>
                    <li>Pipeline Performance Tuning</li>
                    <li>Cloud-Native Jenkins</li>
                </ul>
            </div>

            <!-- Docker Card -->
            <div class="tool-card animate-on-scroll">
                <div class="tool-icon">
                    <i class="fab fa-docker"></i>
                </div>
                <h3>Docker</h3>
                <ul class="tool-topics">
                    <li>Container Fundamentals & Architecture</li>
                    <li>Dockerfile Best Practices</li>
                    <li>Multi-stage Builds Optimization</li>
                    <li>Docker Networking & Service Mesh</li>
                    <li>Volume Management & Persistence</li>
                    <li>Docker Security & Vulnerability Scanning</li>
                    <li>Docker Compose & Stack Deployments</li>
                    <li>Private Registry Management</li>
                    <li>Container Orchestration Basics</li>
                    <li>Docker Swarm & Cluster Management</li>
                </ul>
            </div>

            <!-- Kubernetes Card -->
            <div class="tool-card animate-on-scroll">
                <div class="tool-icon">
                    <i class="fas fa-cubes"></i>
                </div>
                <h3>Kubernetes</h3>
                <ul class="tool-topics">
                    <li>K8s Architecture & Core Components</li>
                    <li>Pods, Deployments & StatefulSets</li>
                    <li>Services, Ingress & Load Balancing</li>
                    <li>ConfigMaps, Secrets & Configuration</li>
                    <li>Persistent Volumes & Storage</li>
                    <li>Networking & CNI Plugins</li>
                    <li>RBAC, Security & Policies</li>
                    <li>Helm Charts & Package Management</li>
                    <li>HPA, VPA & Autoscaling</li>
                    <li>Cluster Maintenance & Troubleshooting</li>
                </ul>
            </div>

            <!-- Terraform Card -->
            <div class="tool-card animate-on-scroll">
                <div class="tool-icon">
                    <i class="fas fa-layer-group"></i>
                </div>
                <h3>Terraform</h3>
                <ul class="tool-topics">
                    <li>Infrastructure as Code Principles</li>
                    <li>Terraform State & Backend Management</li>
                    <li>Modules & Workspaces</li>
                    <li>Provisioners & Configuration Management</li>
                    <li>Variables, Outputs & Locals</li>
                    <li>Dynamic Blocks & Meta-arguments</li>
                    <li>Terraform Cloud/Enterprise</li>
                    <li>Policy as Code with Sentinel</li>
                    <li>Multi-cloud Deployments</li>
                    <li>Best Practices & Security</li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Additional Tools -->
    <section class="tools-grid-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">
                    <i class="fas fa-toolbox"></i> Additional Tools Covered
                </h2>
                <p class="hero-subtitle">Master 13+ additional industry-standard tools</p>
            </div>
            
            <div class="tools-grid">
                <div class="tool-badge">
                    <i class="fas fa-project-diagram"></i>
                    <span>Maven</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-server"></i>
                    <span>Tomcat</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-archive"></i>
                    <span>Nexus</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-chart-line"></i>
                    <span>SonarQube</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-shield-alt"></i>
                    <span>Trivy</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-lock"></i>
                    <span>OWASP</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-ship"></i>
                    <span>ArgoCD</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-helmet-safety"></i>
                    <span>HELM</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-network-wired"></i>
                    <span>Istio</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-chart-bar"></i>
                    <span>Prometheus</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-chart-pie"></i>
                    <span>Grafana</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-search"></i>
                    <span>EFK Stack</span>
                </div>
                <div class="tool-badge">
                    <i class="fas fa-bell"></i>
                    <span>PagerDuty</span>
                </div>
            </div>
        </div>
    </section>

    <!-- Batch Highlights -->
    <section class="container">
        <div class="section-header">
            <h2 class="section-title">
                <i class="fas fa-trophy"></i> Training Highlights
            </h2>
            <p class="hero-subtitle">What makes this batch exceptional</p>
        </div>
        
        <div class="highlights-dashboard">
            <div class="highlight-panel animate-on-scroll">
                <div class="highlight-icon">
                    <i class="fas fa-project-diagram"></i>
                </div>
                <h3>Real-World Projects</h3>
                <span class="project-counter">10+</span>
                <p class="project-desc">
                    Medium-scale projects covering real-world scenarios, from monolith migration 
                    to microservices deployment and cloud infrastructure automation.
                </p>
            </div>
            
            <div class="highlight-panel animate-on-scroll">
                <div class="highlight-icon">
                    <i class="fas fa-graduation-cap"></i>
                </div>
                <h3>Capstone Projects</h3>
                <span class="project-counter">5</span>
                <p class="project-desc">
                    End-to-end DevOps pipeline implementation projects with industry-grade 
                    architecture, security, and deployment strategies.
                </p>
            </div>
            
            <div class="highlight-panel animate-on-scroll">
                <div class="highlight-icon">
                    <i class="fas fa-hands-helping"></i>
                </div>
                <h3>Career Support</h3>
                <p class="project-desc">
                    Resume building, interview preparation, and LinkedIn optimization.
                </p>
            </div>
        </div>
    </section>

    <!-- Batch Details Timeline -->
    <section class="timeline-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">
                    <i class="fas fa-calendar-alt"></i> BATCH DETAILS
                </h2>
            </div>
            
            <div class="timeline">
                <div class="timeline-item animate-on-scroll">
                    <div class="timeline-point"></div>
                    <div class="timeline-content">
                        <div class="timeline-date">
                            <i class="fas fa-calendar-day"></i> Start Date
                        </div>
                        <span class="timeline-value">12-02-2026</span>
                    </div>
                </div>
                
                <div class="timeline-item animate-on-scroll">
                    <div class="timeline-point"></div>
                    <div class="timeline-content">
                        <div class="timeline-date">
                            <i class="fas fa-clock"></i> Session Timings
                        </div>
                        <span class="timeline-value">5:00 - 6:30 PM</span>
                        <p>Daily live interactive sessions</p>
                    </div>
                </div>
                
                <div class="timeline-item animate-on-scroll">
                    <div class="timeline-point"></div>
                    <div class="timeline-content">
                        <div class="timeline-date">
                            <i class="fas fa-calendar-check"></i> Duration
                        </div>
                        <span class="timeline-value">65 Days</span>
                        <p>Comprehensive learning journey</p>
                    </div>
                </div>
                
                <div class="timeline-item animate-on-scroll">
                    <div class="timeline-point"></div>
                    <div class="timeline-content">
                        <div class="timeline-date">
                            <i class="fas fa-rupee-sign"></i> Course Fee
                        </div>
                        <span class="timeline-value">₹9,000</span>
                        <p>Installment options available</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Countdown Timer -->
    <section class="countdown-section">
        <div class="container">
            <h2 class="countdown-title">
                <i class="fas fa-hourglass-half"></i> BATCH STARTS IN
            </h2>
            
            <div class="countdown-clock">
                <div class="time-unit">
                    <span class="time-value" id="days">00</span>
                    <span class="time-label">Days</span>
                </div>
                <div class="time-unit">
                    <span class="time-value" id="hours">00</span>
                    <span class="time-label">Hours</span>
                </div>
                <div class="time-unit">
                    <span class="time-value" id="minutes">00</span>
                    <span class="time-label">Minutes</span>
                </div>
                <div class="time-unit">
                    <span class="time-value" id="seconds">00</span>
                    <span class="time-label">Seconds</span>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="cta-glow"></div>
        <div class="container">
            <div class="cta-content">
                <h2 class="cta-title">
                    Ready to Transform Your DevOps Career?
                </h2>
                <p class="hero-subtitle">
                    Join 2000+ successful professionals who transformed their careers with our DevOps Training.
                </p>
                
                <button class="enroll-button">
                    <i class="fas fa-rocket"></i> ENROLL NOW
                </button>
                
                <p style="margin-top: 20px; opacity: 0.8;">
                    For Registrations | 9700712459
                </p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-column">
                    <h3>Contact Info</h3>
                    <ul class="contact-list">
                        <li>
                            <i class="fas fa-globe"></i>
                            <a href="https://www.learnwithkastro.com" target="_blank" class="contact-link">
                                www.learnwithkastro.com
                            </a>
                        </li>
                        <li>
                            <i class="fab fa-youtube"></i>
                            <a href="https://www.youtube.com/@LearnWithKASTRO" target="_blank" class="contact-link">
                                youtube.com/@LearnWithKASTRO
                            </a>
                        </li>
                        <li>
                            <i class="fas fa-phone"></i>
                            <a href="tel:9700712459" class="contact-link">
                                +91 97007 12459
                            </a>
                        </li>
                        <li>
                            <i class="fas fa-envelope"></i>
                            <a href="mailto:contact@learnwithkastro.com" class="contact-link">
                                contact@learnwithkastro.com
                            </a>
                        </li>
                    </ul>
                </div>
                
                <div class="footer-column">
                    <h3>Quick Links</h3>
                    <ul class="contact-list">
                        <li><a href="#curriculum" class="contact-link">Curriculum</a></li>
                        <li><a href="#projects" class="contact-link">Projects</a></li>
                        <li><a href="#highlights" class="contact-link">Highlights</a></li>
                        <li><a href="#enroll" class="contact-link">Enrollment</a></li>
                    </ul>
                </div>
                
                <div class="footer-column">
                    <h3>Connect With Us</h3>
                    <div class="social-links">
                        <a href="#" class="social-icon">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-telegram"></i>
                        </a>
                    </div>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; <%= Year.now().getValue() %> Learn With KASTRO. All Rights Reserved.</p>
                <p>DevOps Masterclass | Batch 08 | Premium Training Program</p>
            </div>
        </div>
    </footer>

    <script src="js/animations.js"></script>
</body>
</html>