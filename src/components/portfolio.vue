<script setup>
import { ref, onMounted } from 'vue'

const currentSection = ref('home')
const isMenuOpen = ref(false)

const my_projects = ref([
    {
    id: 4,
    title: 'Timer App',
    description: 'A responsive timer application built with modern web technologies for productivity and time management.',
    image: '',
    tags: ['vue', 'javascript', 'css','git'],
    github: 'https://github.com/george-shaji/timer',
    live: 'https://george-shaji.github.io/timer/#/',
    sample_credentials: {
      username: 'george@gmail.com',
      password: 'password123'
    }
  }

])

const projects = ref([
  {
    id: 1,
    title: 'Crm',
    description: 'Customer Relationship Management (CRM) system built with laravel',
    image: '',
    tags: ['laravel', 'PHP', 'MySQL', 'PostgreSQL'],
    github: '#',
    live: '#'
  },
  {
    id: 2,
    title: 'Single endpoint',
    description: 'Single end point API built with Laravel used for email,sms sending and phone number validation',
    image: '',
    tags: ['laravel', 'PHP', 'MySQL', 'PostgreSQL'],
    github: '#',
    live: '#'
  },
  {
    id: 3,
    title: 'Adtopia',
    description: 'adtopia project is used for managing advertisements and campaigns effectively and make reports on the performance of the campaigns.',
    image: '',
    tags: ['angular', 'PHP', 'MySQL', 'PostgreSQL', 'laravel'],
    github: '#',
    live: '#'
  }
])

const skills = ref([
  { name: 'JavaScript', level: 85 },
  { name: 'Vue.js', level: 50 },
  { name: 'React', level: 50 },
  { name: 'Node.js', level: 50 },
  { name: 'Python', level: 35 },
  { name: 'SQL', level: 90 },
  { name: 'CSS/SCSS', level: 90 },
  { name: 'Git', level: 85 },
  { name: 'Laravel', level: 90 }
])

const scrollToSection = (sectionId) => {
  const element = document.getElementById(sectionId)
  if (element) {
    element.scrollIntoView({ behavior: 'smooth' })
  }
  isMenuOpen.value = false
}

onMounted(() => {
  // Add scroll listener for navigation highlighting
  window.addEventListener('scroll', () => {
    const sections = ['home', 'about', 'skills', 'projects', 'contact']
    const scrollPosition = window.scrollY + 100

    sections.forEach(section => {
      const element = document.getElementById(section)
      if (element) {
        const offsetTop = element.offsetTop
        const height = element.offsetHeight
        
        if (scrollPosition >= offsetTop && scrollPosition < offsetTop + height) {
          currentSection.value = section
        }
      }
    })
  })
})
</script>

<template>
  <div class="portfolio">
    <!-- Navigation -->
    <nav class="navbar">
      <div class="nav-container">
        <div class="nav-logo">
          <span class="logo-text">Portfolio</span>
        </div>
        
        <div class="nav-menu" :class="{ 'active': isMenuOpen }">
          <a href="#home" @click="scrollToSection('home')" 
             :class="{ 'active': currentSection === 'home' }">Home</a>
          <a href="#about" @click="scrollToSection('about')" 
             :class="{ 'active': currentSection === 'about' }">About</a>
          <a href="#skills" @click="scrollToSection('skills')" 
             :class="{ 'active': currentSection === 'skills' }">Skills</a>
          <a href="#projects" @click="scrollToSection('projects')" 
             :class="{ 'active': currentSection === 'projects' }">Projects</a>
          <a href="#contact" @click="scrollToSection('contact')" 
             :class="{ 'active': currentSection === 'contact' }">Contact</a>
        </div>

        <div class="nav-toggle" @click="isMenuOpen = !isMenuOpen">
          <span class="bar"></span>
          <span class="bar"></span>
          <span class="bar"></span>
        </div>
      </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero">
      <div class="hero-container">
        <div class="hero-content">
          <h1 class="hero-title">
            Hi, I'm <span class="accent">George Shaji</span>
          </h1>
          <h2 class="hero-subtitle">Web Developer</h2>
          <p class="hero-description">
            I create exceptional digital experiences through clean code and innovative design.
            Passionate about building scalable web applications that make a difference.
          </p>
          <div class="hero-buttons">
            <button class="btn-primary" @click="scrollToSection('projects')">
              View My Work
            </button>
            <button class="btn-secondary" @click="scrollToSection('contact')">
              Get In Touch
            </button>
          </div>
        </div>
        <div class="hero-image">
          <div class="floating-card">
            <div class="code-snippet">
              <div class="code-line">
                <span class="keyword">const</span> <span class="variable">developer</span> = {
              </div>
              <div class="code-line indent">
                <span class="property">name:</span> 
                <span class="string">'George Shaji'</span>,
              </div>
              <div class="code-line indent">
                <span class="property">skills:</span> 
                <span class="array">['JS', 'Vue', 'Node','Laravel','PHP']</span>,
              </div>
              <div class="code-line indent">
                <span class="property">passion:</span> 
                <span class="string">'Building amazing apps'</span>
              </div>
              <div class="code-line">}</div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about">
      <div class="container">
        <h2 class="section-title">About Me</h2>
        <div class="about-content">
          <div class="about-text">
            <h3>Vnadalay Business Solutions</h3>
            <p>
              With over 2.5 years of experience in web development, I specialize in creating
              robust, scalable applications using modern technologies. My journey began with
              a curiosity for how things work, which led me to discover the art of programming.
            </p>
            <p>
              I believe in writing clean, maintainable code and staying up-to-date with the
              latest industry trends. When I'm not coding, you can find me exploring new
              technologies, contributing to open-source projects, or sharing knowledge with
              the developer community.
            </p>
            <div class="stats">
              <div class="stat">
                <h4>2.5+</h4>
                <p>Years Experience</p>
              </div>
            </div>
          </div>
          <div class="about-image">
            <div class="image-container">
              <!-- <img src="" alt="Profile"> -->
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Skills Section -->
    <section id="skills" class="skills">
      <div class="container">
        <h2 class="section-title">Skills & Technologies</h2>
        <div class="skills-grid">
          <div v-for="skill in skills" :key="skill.name" class="skill-item">
            <div class="skill-info">
              <span class="skill-name">{{ skill.name }}</span>
              <span class="skill-percentage">{{ skill.level }}%</span>
            </div>
            <div class="skill-bar">
              <div class="skill-progress" :style="{ width: skill.level + '%' }"></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Projects Section -->
    <section id="projects" class="projects">
      <div class="container">
        <h2 class="section-title">Worked Projects</h2>
        <div class="projects-grid">
          <div v-for="project in projects" :key="project.id" class="project-card">
            <div class="project-image">
              <!-- <img :src="project.image" :alt="project.title"> -->
              <div class="project-overlay">
                <div class="project-links">
                  <a :href="project.github" class="project-link">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                      <path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0024 12c0-6.63-5.37-12-12-12z"/>
                    </svg>
                  </a>
                  <a :href="project.live" class="project-link">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                      <path d="M14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3m-2 16H5V5h7V3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7h-2v7z"/>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
            <div class="project-content">
              <h3 class="project-title">{{ project.title }}</h3>
              <p class="project-description">{{ project.description }}</p>
              <p class="project-description">{{ project.sample_credentials }}</p>
              <div class="project-tags">
                <span v-for="tag in project.tags" :key="tag" class="tag">{{ tag }}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

        <section id="my_projects" class="my_projects">
      <div class="container">
        <h2 class="section-title">My Projects</h2>
        <div class="projects-grid">
          <div v-for="my_projects in my_projects" :key="my_projects.id" class="project-card">
            <div class="project-image">
              <!-- <img :src="my_projects.image" :alt="my_projects.title"> -->
              <div class="project-overlay">
                <div class="project-links">
                  <a :href="my_projects.github" class="project-link">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                      <path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0024 12c0-6.63-5.37-12-12-12z"/>
                    </svg>
                  </a>
                  <a :href="my_projects.live" class="project-link">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                      <path d="M14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3m-2 16H5V5h7V3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7h-2v7z"/>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
            <div class="project-content">
              <h3 class="project-title">{{ my_projects.title }}</h3>
              <p class="project-description">{{ my_projects.description }}</p>
              <p class="project-description">{{ my_projects.sample_credentials }}</p>
              <div class="project-tags">
                <span v-for="tag in my_projects.tags" :key="tag" class="tag">{{ tag }}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
   <!--  <section id="contact" class="contact">
      <div class="container">
        <h2 class="section-title">Get In Touch</h2>
        <div class="contact-content">
          <div class="contact-info">
            <h3>Let's Work Together</h3>
            <p>
              I'm always open to discussing new opportunities and exciting projects.
              Whether you have a question or just want to say hi, feel free to reach out!
            </p>
            <div class="contact-items">
              <div class="contact-item">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
                </svg>
                <span>georgeshaji091@gmail.com</span>
              </div>
              <div class="contact-item">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/>
                </svg>
                <span>+91 7025207490</span>
              </div>
              <div class="contact-item">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
                </svg>
                <span>Kochi, Kerala , India</span>
              </div>
            </div>
          </div>
          <form class="contact-form">
            <div class="form-group">
              <input type="text" placeholder="Your Name" required>
            </div>
            <div class="form-group">
              <input type="email" placeholder="Your Email" required>
            </div>
            <div class="form-group">
              <input type="text" placeholder="Subject" required>
            </div>
            <div class="form-group">
              <textarea placeholder="Your Message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn-primary">Send Message</button>
          </form>
        </div>
      </div>
    </section> -->

    <!-- Footer -->
    <footer class="footer">
      <div class="container">
        <div class="footer-content">
          <p>&copy; 2025 George Shaji. All rights reserved.</p>
          <div class="social-links">
            <a href="#" class="social-link">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                <path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0024 12c0-6.63-5.37-12-12-12z"/>
              </svg>
            </a>
            <a href="#" class="social-link">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
              </svg>
            </a>
            <!-- <a href="#" class="social-link">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                <path d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"/>
              </svg>
            </a> -->
          </div>
        </div>
      </div>
    </footer>
  </div>
</template>

<style scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.portfolio {
  background-color: #0a0a0a;
  color: #ffffff;
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  line-height: 1.6;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

/* Navigation */
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
  background: rgba(10, 10, 10, 0.95);
  backdrop-filter: blur(10px);
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
  z-index: 1000;
  transition: all 0.3s ease;
}

.nav-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 70px;
}

.logo-text {
  font-size: 1.5rem;
  font-weight: bold;
  color: #00d4ff;
  font-family: 'JetBrains Mono', monospace;
}

.nav-menu {
  display: flex;
  gap: 2rem;
}

.nav-menu a {
  color: #ffffff;
  text-decoration: none;
  font-weight: 500;
  transition: color 0.3s ease;
  position: relative;
}

.nav-menu a:hover,
.nav-menu a.active {
  color: #00d4ff;
}

.nav-menu a::after {
  content: '';
  position: absolute;
  bottom: -5px;
  left: 0;
  width: 0;
  height: 2px;
  background: #00d4ff;
  transition: width 0.3s ease;
}

.nav-menu a.active::after,
.nav-menu a:hover::after {
  width: 100%;
}

.nav-toggle {
  display: none;
  flex-direction: column;
  cursor: pointer;
}

.bar {
  width: 25px;
  height: 3px;
  background: #ffffff;
  margin: 3px 0;
  transition: 0.3s;
}

/* Hero Section */
.hero {
  min-height: 100vh;
  display: flex;
  align-items: center;
  padding: 100px 0 50px;
  background: linear-gradient(135deg, #0a0a0a 0%, #1a1a2e 100%);
  position: relative;
  overflow: hidden;
}

.hero::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: radial-gradient(circle at 20% 80%, rgba(0, 212, 255, 0.1) 0%, transparent 50%),
              radial-gradient(circle at 80% 20%, rgba(0, 212, 255, 0.1) 0%, transparent 50%);
}

.hero-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
  position: relative;
  z-index: 1;
}

.hero-title {
  font-size: 3.5rem;
  font-weight: 800;
  margin-bottom: 1rem;
  line-height: 1.2;
}

.accent {
  color: #00d4ff;
  background: linear-gradient(45deg, #00d4ff, #0099cc);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.hero-subtitle {
  font-size: 1.5rem;
  color: #888;
  margin-bottom: 1.5rem;
  font-weight: 400;
}

.hero-description {
  font-size: 1.1rem;
  color: #ccc;
  margin-bottom: 2.5rem;
  max-width: 500px;
}

.hero-buttons {
  display: flex;
  gap: 1rem;
}

.btn-primary,
.btn-secondary {
  padding: 12px 24px;
  border: none;
  border-radius: 8px;
  font-size: 1rem;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
  text-decoration: none;
  display: inline-block;
}

.btn-primary {
  background: linear-gradient(45deg, #00d4ff, #0099cc);
  color: #ffffff;
  box-shadow: 0 4px 15px rgba(0, 212, 255, 0.3);
}

.btn-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 6px 20px rgba(0, 212, 255, 0.4);
}

.btn-secondary {
  background: transparent;
  color: #00d4ff;
  border: 2px solid #00d4ff;
}

.btn-secondary:hover {
  background: #00d4ff;
  color: #0a0a0a;
  transform: translateY(-2px);
}

.floating-card {
  background: rgba(26, 26, 46, 0.8);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 16px;
  padding: 2rem;
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
  animation: float 6s ease-in-out infinite;
}

@keyframes float {
  0%, 100% { transform: translateY(0px); }
  50% { transform: translateY(-20px); }
}

.code-snippet {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.9rem;
}

.code-line {
  margin: 0.5rem 0;
}

.indent {
  padding-left: 1rem;
}

.keyword { color: #ff79c6; }
.variable { color: #50fa7b; }
.property { color: #8be9fd; }
.string { color: #f1fa8c; }
.array { color: #bd93f9; }

/* Section Styles */
.section-title {
  font-size: 2.5rem;
  text-align: center;
  margin-bottom: 3rem;
  position: relative;
}

.section-title::after {
  content: '';
  position: absolute;
  bottom: -10px;
  left: 50%;
  transform: translateX(-50%);
  width: 60px;
  height: 4px;
  background: linear-gradient(45deg, #00d4ff, #0099cc);
  border-radius: 2px;
}

/* About Section */
.about {
  padding: 100px 0;
  background: #0f0f0f;
}

.about-content {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
}

.about-text h3 {
  font-size: 1.8rem;
  margin-bottom: 1.5rem;
  color: #00d4ff;
}

.about-text p {
  margin-bottom: 1.5rem;
  color: #ccc;
  font-size: 1.1rem;
}

.stats {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 2rem;
  margin-top: 2rem;
}

.stat {
  text-align: center;
  padding: 1.5rem;
  background: rgba(26, 26, 46, 0.5);
  border-radius: 12px;
  border: 1px solid rgba(255, 255, 255, 0.1);
}

.stat h4 {
  font-size: 2rem;
  color: #00d4ff;
  margin-bottom: 0.5rem;
}

.stat p {
  color: #888;
  font-size: 0.9rem;
}

.image-container {
  position: relative;
  border-radius: 16px;
  overflow: hidden;
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
}

.image-container img {
  width: 100%;
  height: auto;
  display: block;
}

/* Skills Section */
.skills {
  padding: 100px 0;
  background: #0a0a0a;
}

.skills-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
}

.skill-item {
  background: rgba(26, 26, 46, 0.3);
  padding: 1.5rem;
  border-radius: 12px;
  border: 1px solid rgba(255, 255, 255, 0.1);
}

.skill-info {
  display: flex;
  justify-content: space-between;
  margin-bottom: 1rem;
}

.skill-name {
  font-weight: 600;
  color: #ffffff;
}

.skill-percentage {
  color: #00d4ff;
  font-weight: 600;
}

.skill-bar {
  width: 100%;
  height: 8px;
  background: rgba(255, 255, 255, 0.1);
  border-radius: 4px;
  overflow: hidden;
}

.skill-progress {
  height: 100%;
  background: linear-gradient(45deg, #00d4ff, #0099cc);
  border-radius: 4px;
  transition: width 1s ease;
}

/* Projects Section */
.projects {
  padding: 100px 0;
  background: #0f0f0f;
}

.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
}

.project-card {
  background: rgba(26, 26, 46, 0.3);
  border-radius: 16px;
  overflow: hidden;
  border: 1px solid rgba(255, 255, 255, 0.1);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.project-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 20px 40px rgba(0, 212, 255, 0.2);
}

.project-image {
  position: relative;
  overflow: hidden;
}

.project-image img {
  width: 100%;
  height: 250px;
  object-fit: cover;
  transition: transform 0.3s ease;
}

.project-overlay {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.8);
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: 0;
  transition: opacity 0.3s ease;
}

.project-card:hover .project-overlay {
  opacity: 1;
}

.project-card:hover .project-image img {
  transform: scale(1.1);
}

.project-links {
  display: flex;
  gap: 1rem;
}

.project-link {
  width: 50px;
  height: 50px;
  background: #00d4ff;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #0a0a0a;
  text-decoration: none;
  transition: transform 0.3s ease;
}

.project-link:hover {
  transform: scale(1.1);
}

.project-content {
  padding: 1.5rem;
}

.project-title {
  font-size: 1.3rem;
  margin-bottom: 0.5rem;
  color: #ffffff;
}

.project-description {
  color: #ccc;
  margin-bottom: 1rem;
  font-size: 0.95rem;
}

.project-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.tag {
  background: rgba(0, 212, 255, 0.2);
  color: #00d4ff;
  padding: 0.25rem 0.75rem;
  border-radius: 20px;
  font-size: 0.8rem;
  border: 1px solid rgba(0, 212, 255, 0.3);
}

/* Contact Section */
.contact {
  padding: 100px 0;
  background: #0a0a0a;
}

.contact-content {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
}

.contact-info h3 {
  font-size: 1.8rem;
  margin-bottom: 1rem;
  color: #00d4ff;
}

.contact-info p {
  color: #ccc;
  margin-bottom: 2rem;
  font-size: 1.1rem;
}

.contact-items {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.contact-item {
  display: flex;
  align-items: center;
  gap: 1rem;
  color: #ccc;
}

.contact-item svg {
  color: #00d4ff;
}

.contact-form {
  background: rgba(26, 26, 46, 0.3);
  padding: 2rem;
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.1);
}

.form-group {
  margin-bottom: 1.5rem;
}

.form-group input,
.form-group textarea {
  width: 100%;
  padding: 12px 16px;
  background: rgba(255, 255, 255, 0.05);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 8px;
  color: #ffffff;
  font-size: 1rem;
  transition: border-color 0.3s ease;
}

.form-group input:focus,
.form-group textarea:focus {
  outline: none;
  border-color: #00d4ff;
}

.form-group input::placeholder,
.form-group textarea::placeholder {
  color: #888;
}

/* Footer */
.footer {
  padding: 2rem 0;
  background: #000;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
}

.footer-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.footer-content p {
  color: #888;
}

.social-links {
  display: flex;
  gap: 1rem;
}

.social-link {
  width: 40px;
  height: 40px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #888;
  text-decoration: none;
  transition: all 0.3s ease;
}

.social-link:hover {
  background: #00d4ff;
  color: #0a0a0a;
  transform: translateY(-2px);
}

/* Responsive Design */
@media (max-width: 768px) {
  .nav-menu {
    position: fixed;
    left: -100%;
    top: 70px;
    flex-direction: column;
    background-color: rgba(10, 10, 10, 0.95);
    width: 100%;
    text-align: center;
    transition: 0.3s;
    padding: 2rem 0;
  }

  .nav-menu.active {
    left: 0;
  }

  .nav-toggle {
    display: flex;
  }

  .hero-container {
    grid-template-columns: 1fr;
    text-align: center;
  }

  .hero-title {
    font-size: 2.5rem;
  }

  .about-content,
  .contact-content {
    grid-template-columns: 1fr;
    gap: 2rem;
  }

  .stats {
    grid-template-columns: 1fr;
    gap: 1rem;
  }

  .hero-buttons {
    flex-direction: column;
    align-items: center;
    gap: 1rem;
  }

  .projects-grid {
    grid-template-columns: 1fr;
  }

  .skills-grid {
    grid-template-columns: 1fr;
  }

  .footer-content {
    flex-direction: column;
    gap: 1rem;
    text-align: center;
  }
}

@media (max-width: 480px) {
  .container {
    padding: 0 15px;
  }

  .hero-title {
    font-size: 2rem;
  }

  .section-title {
    font-size: 2rem;
  }

  .floating-card {
    padding: 1rem;
  }

  .code-snippet {
    font-size: 0.8rem;
  }
}
</style>
