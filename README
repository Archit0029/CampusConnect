<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CampusConnect: Project Architecture & Analysis</title>
    
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        /* Base Settings */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #fdfdfc; /* Warm neutral background */
            color: #1f2937;
        }

        /* Chart Container Styling - STRICT ADHERENCE TO REQUIREMENTS */
        .chart-container {
            position: relative;
            width: 100%;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
            height: 300px;
            max-height: 400px;
        }

        /* Responsive adjustments for charts */
        @media (min-width: 768px) {
            .chart-container {
                height: 350px;
            }
        }

        /* Custom Scrollbar for code blocks */
        .code-scroll::-webkit-scrollbar {
            height: 8px;
        }
        .code-scroll::-webkit-scrollbar-track {
            background: #2d3748;
        }
        .code-scroll::-webkit-scrollbar-thumb {
            background: #4a5568;
            border-radius: 4px;
        }

        /* Animation utilities */
        .fade-in {
            animation: fadeIn 0.5s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Tab Active State */
        .tab-active {
            border-bottom: 2px solid #3b82f6; /* Blue-500 */
            color: #1d4ed8; /* Blue-700 */
        }
    </style>
</head>
<body class="antialiased min-h-screen flex flex-col">

    <!-- REQUIRED PLACEHOLDERS -->
    <!-- Chosen Palette: Warm Neutrals (Background #fdfdfc) with Professional Blue (#3b82f6) and Teal (#14b8a6) accents. -->
    <!-- Application Structure Plan: The SPA is designed as an interactive Developer Portal. It moves away from a linear text document to a 3-pillar structure: 'Project Overview' (for context), 'Tech Ecosystem' (for analysis & data viz), and 'Deployment Guide' (actionable steps). This structure was chosen to separate the 'What' (Features), the 'How' (Tech Stack/Architecture), and the 'Action' (Installation), catering to both stakeholders and developers. -->
    <!-- Visualization & Content Choices:
        1. Feature Grid (Text/Interactive): Goal -> Inform. Method -> Clickable cards updating a detail view. Justification -> Allows users to explore features without overwhelming text.
        2. Tech Stack Distribution (Doughnut Chart): Goal -> Organize/Analyze. Method -> Chart.js. Justification -> Visually represents the balance between Frontend, Backend, and Infra.
        3. System Capabilities (Radar Chart): Goal -> Relationships. Method -> Chart.js. Justification -> Visualizes the strengths of the chosen stack (Real-time vs Data Integrity) based on report analysis.
        4. Installation Stepper (Interactive UI): Goal -> Change/Process. Method -> JS-driven content switching. Justification -> Turns a static list into a manageable workflow.
        NO SVG/Mermaid used. Unicode icons employed. -->
    <!-- CONFIRMATION: NO SVG graphics used. NO Mermaid JS used. -->

    <!-- Main Container -->
    <div class="flex-grow w-full max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 py-8">

        <!-- Header -->
        <header class="mb-10 text-center">
            <div class="inline-block px-3 py-1 mb-4 text-xs font-semibold tracking-wider text-green-800 uppercase bg-green-100 rounded-full">
                Active Status
            </div>
            <h1 class="text-4xl font-bold text-gray-900 tracking-tight mb-2">CampusConnect 🎓</h1>
            <p class="text-xl text-gray-500 max-w-2xl mx-auto">The ultimate digital ecosystem for student collaboration, event management, and real-time campus updates.</p>
            <div class="mt-6 flex justify-center space-x-4">
                <a href="(https://campusconnect-dl4xvaqg.b4a.run/)" target="_blank" class="inline-flex items-center px-6 py-3 border border-transparent text-base font-medium rounded-md shadow-sm text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 transition-colors">
                    View Live Demo 🚀
                </a>
            </div>
        </header>

        <!-- Navigation Tabs -->
        <nav class="flex justify-center space-x-8 border-b border-gray-200 mb-8" aria-label="Tabs">
            <button onclick="switchTab('overview')" id="tab-overview" class="tab-active whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm transition-colors hover:text-blue-600 focus:outline-none">
                Project Overview
            </button>
            <button onclick="switchTab('tech')" id="tab-tech" class="whitespace-nowrap py-4 px-1 border-b-2 border-transparent font-medium text-sm text-gray-500 transition-colors hover:text-blue-600 focus:outline-none">
                Tech Ecosystem
            </button>
            <button onclick="switchTab('guide')" id="tab-guide" class="whitespace-nowrap py-4 px-1 border-b-2 border-transparent font-medium text-sm text-gray-500 transition-colors hover:text-blue-600 focus:outline-none">
                Deployment Guide
            </button>
        </nav>

        <!-- CONTENT SECTION: PROJECT OVERVIEW -->
        <section id="content-overview" class="fade-in">
            <div class="mb-8">
                <h2 class="text-2xl font-bold text-gray-900 mb-3">Connecting the Academic World</h2>
                <p class="text-gray-600 leading-relaxed max-w-4xl">
                    CampusConnect bridges the gap between students, faculty, and campus resources. 
                    This section outlines the core functional pillars of the application, derived from the project's requirements. 
                    Explore the cards below to understand how the platform fosters a connected academic community.
                </p>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
                <!-- Interactive Feature List -->
                <div class="lg:col-span-1 space-y-4" id="feature-list">
                    <!-- Generated via JS -->
                </div>

                <!-- Feature Detail View -->
                <div class="lg:col-span-2 bg-white rounded-xl shadow-sm border border-gray-100 p-6 relative overflow-hidden">
                    <div id="feature-detail-content" class="h-full flex flex-col justify-center items-start transition-opacity duration-300">
                        <div class="absolute top-0 right-0 p-4 opacity-10 text-9xl select-none" id="bg-icon">💬</div>
                        <h3 class="text-2xl font-bold text-gray-900 mb-4" id="detail-title">Select a Feature</h3>
                        <p class="text-gray-600 text-lg mb-6 leading-relaxed" id="detail-desc">Click on a feature card to the left to see in-depth details about its implementation and user value.</p>
                        <div class="mt-auto pt-4 border-t border-gray-100 w-full">
                            <span class="text-xs font-semibold text-gray-400 uppercase tracking-wider">Tech Enabler</span>
                            <p class="text-blue-600 font-medium" id="detail-tech">System Core</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CONTENT SECTION: TECH ECOSYSTEM (Charts) -->
        <section id="content-tech" class="hidden fade-in">
            <div class="mb-8">
                <h2 class="text-2xl font-bold text-gray-900 mb-3">Architectural Analysis</h2>
                <p class="text-gray-600 leading-relaxed max-w-4xl">
                    CampusConnect leverages a modern MERN-like stack optimized for real-time interaction and ease of deployment. 
                    The charts below visualize the composition of the technology stack and the system's capabilities based on the chosen libraries.
                </p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 items-start">
                
                <!-- Chart 1: Tech Stack Composition -->
                <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
                    <h3 class="text-lg font-semibold text-gray-900 mb-2">Tech Stack Composition</h3>
                    <p class="text-sm text-gray-500 mb-6">Distribution of core libraries and infrastructure.</p>
                    
                    <div class="chart-container">
                        <canvas id="stackChart"></canvas>
                    </div>
                    
                    <div class="mt-4 grid grid-cols-2 gap-4 text-sm">
                        <div class="p-3 bg-gray-50 rounded-lg">
                            <span class="block font-semibold text-gray-700">Frontend</span>
                            <span class="text-gray-500">React + Vite + Tailwind</span>
                        </div>
                        <div class="p-3 bg-gray-50 rounded-lg">
                            <span class="block font-semibold text-gray-700">Backend</span>
                            <span class="text-gray-500">Node + Express + Socket.io</span>
                        </div>
                    </div>
                </div>

                <!-- Chart 2: System Capabilities Radar -->
                <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
                    <h3 class="text-lg font-semibold text-gray-900 mb-2">System Capability Profile</h3>
                    <p class="text-sm text-gray-500 mb-6">Strengths analysis based on architectural choices.</p>
                    
                    <div class="chart-container">
                        <canvas id="radarChart"></canvas>
                    </div>

                    <div class="mt-6 text-sm text-gray-600 bg-blue-50 p-4 rounded-lg border border-blue-100">
                        <strong class="text-blue-800">Analyst Note:</strong> The high score in "Real-time" reflects the use of <strong>Socket.io</strong>, while "Deployment Ease" is maximized by the <strong>Back4App</strong> integration, effectively removing DevOps overhead.
                    </div>
                </div>

            </div>

            <!-- Infrastructure Flow (Text Based Visual) -->
            <div class="mt-8 bg-white rounded-xl shadow-sm border border-gray-100 p-6">
                <h3 class="text-lg font-semibold text-gray-900 mb-4">Infrastructure & Data Flow</h3>
                <div class="flex flex-col md:flex-row justify-between items-center space-y-4 md:space-y-0 text-center">
                    
                    <div class="flex-1 p-4 hover:bg-gray-50 transition-colors rounded-lg cursor-default group">
                        <div class="text-4xl mb-2 group-hover:scale-110 transition-transform">👤</div>
                        <h4 class="font-bold text-gray-800">User</h4>
                        <p class="text-xs text-gray-500">Interacts via Browser</p>
                    </div>
                    
                    <div class="text-gray-300 text-2xl hidden md:block">➝</div>
                    <div class="text-gray-300 text-2xl md:hidden">⬇</div>

                    <div class="flex-1 p-4 hover:bg-blue-50 transition-colors rounded-lg cursor-default group border border-blue-100 bg-blue-50/30">
                        <div class="text-4xl mb-2 group-hover:scale-110 transition-transform">⚛️</div>
                        <h4 class="font-bold text-blue-800">Frontend</h4>
                        <p class="text-xs text-blue-600">React + Vite (Static)</p>
                    </div>

                    <div class="text-gray-300 text-2xl hidden md:block">➝</div>
                    <div class="text-gray-300 text-2xl md:hidden">⬇</div>

                    <div class="flex-1 p-4 hover:bg-green-50 transition-colors rounded-lg cursor-default group border border-green-100 bg-green-50/30">
                        <div class="text-4xl mb-2 group-hover:scale-110 transition-transform">🖥️</div>
                        <h4 class="font-bold text-green-800">Back4App Containers</h4>
                        <p class="text-xs text-green-600">Node.js + Express + Socket.io</p>
                    </div>

                    <div class="text-gray-300 text-2xl hidden md:block">➝</div>
                    <div class="text-gray-300 text-2xl md:hidden">⬇</div>

                    <div class="flex-1 p-4 hover:bg-purple-50 transition-colors rounded-lg cursor-default group border border-purple-100 bg-purple-50/30">
                        <div class="text-4xl mb-2 group-hover:scale-110 transition-transform">🍃</div>
                        <h4 class="font-bold text-purple-800">Back4App DB</h4>
                        <p class="text-xs text-purple-600">Managed MongoDB</p>
                    </div>

                </div>
            </div>
        </section>

        <!-- CONTENT SECTION: DEPLOYMENT GUIDE -->
        <section id="content-guide" class="hidden fade-in">
            <div class="mb-8">
                <h2 class="text-2xl font-bold text-gray-900 mb-3">Deployment Workflow</h2>
                <p class="text-gray-600 leading-relaxed max-w-4xl">
                    Follow this interactive guide to set up the CampusConnect environment. 
                    This workflow covers local development setup and the continuous deployment pipeline via Back4App.
                </p>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-4 gap-8">
                <!-- Stepper Navigation -->
                <div class="lg:col-span-1">
                    <div class="bg-white rounded-xl shadow-sm border border-gray-100 overflow-hidden">
                        <div id="stepper-nav" class="flex flex-col">
                            <!-- Generated via JS -->
                        </div>
                    </div>
                </div>

                <!-- Stepper Content -->
                <div class="lg:col-span-3">
                    <div class="bg-gray-900 rounded-xl shadow-lg border border-gray-800 p-6 min-h-[400px] flex flex-col relative">
                        <!-- Step Content -->
                        <div id="step-content">
                            <!-- Injected via JS -->
                        </div>
                        
                        <!-- Navigation Buttons -->
                        <div class="mt-auto pt-6 flex justify-between border-t border-gray-700">
                            <button onclick="prevStep()" id="btn-prev" class="px-4 py-2 text-sm font-medium text-gray-300 hover:text-white disabled:opacity-50 disabled:cursor-not-allowed">
                                ← Previous
                            </button>
                            <button onclick="nextStep()" id="btn-next" class="px-6 py-2 bg-blue-600 text-white text-sm font-medium rounded hover:bg-blue-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed">
                                Next Step →
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- Footer -->
    <footer class="mt-auto border-t border-gray-200 bg-white py-8">
        <div class="max-w-6xl mx-auto px-4 text-center">
            <p class="text-gray-500 text-sm">© 2026 CampusConnect Project. Built with ❤️ for students.</p>
            <p class="text-gray-400 text-xs mt-2">Distributed under the MIT License.</p>
        </div>
    </footer>

    <!-- JAVASCRIPT LOGIC -->
    <script>
        // --- DATA STORE ---
        const appData = {
            features: [
                {
                    id: 'chat',
                    title: 'Real-time Chat',
                    icon: '💬',
                    desc: 'Seamless student collaboration powered by WebSockets. Allows for instant messaging in study groups and direct peer-to-peer communication.',
                    tech: 'Socket.io + Node.js',
                    color: 'blue'
                },
                {
                    id: 'events',
                    title: 'Event Tracking',
                    icon: '📅',
                    desc: 'Interactive calendar system ensuring students never miss campus activities. Includes integrated push notifications for club meetings and deadlines.',
                    tech: 'React State + MongoDB Date Objects',
                    color: 'orange'
                },
                {
                    id: 'resources',
                    title: 'Resource Hub',
                    icon: '📚',
                    desc: 'A centralized, searchable repository for academic materials. Faculty can upload lecture notes and assignments for easy student access.',
                    tech: 'Back4App Database (File Storage)',
                    color: 'green'
                },
                {
                    id: 'notify',
                    title: 'Smart Notifications',
                    icon: '🔔',
                    desc: 'Instant alerts keep users updated on new messages and announcements, driving engagement and ensuring critical information is seen.',
                    tech: 'Socket.io Events',
                    color: 'purple'
                },
                {
                    id: 'mobile',
                    title: 'Fully Responsive',
                    icon: '📱',
                    desc: 'A mobile-first design philosophy ensuring the platform works beautifully on all devices, from desktops to smartphones.',
                    tech: 'Tailwind CSS',
                    color: 'teal'
                }
            ],
            steps: [
                {
                    title: 'Prerequisites',
                    desc: 'Before starting, ensure your environment is ready.',
                    code: `Node.js (v16 or higher)
npm or yarn package manager
A Back4App Account (or local MongoDB)`
                },
                {
                    title: 'Clone Repository',
                    desc: 'Get the source code from GitHub.',
                    code: `git clone https://github.com/campus-connect/project.git
cd project`
                },
                {
                    title: 'Install Dependencies',
                    desc: 'Install the necessary Node.js packages.',
                    code: `npm install`
                },
                {
                    title: 'Environment Setup',
                    desc: 'Configure your .env file in the root directory.',
                    code: `PORT=5000
MONGO_URI=your_back4app_mongodb_uri
JWT_SECRET=your_jwt_secret_key`
                },
                {
                    title: 'Deployment',
                    desc: 'Deploy the backend to Back4App Containers.',
                    code: `1. Connect GitHub repo to Back4App
2. Set Root Directory to ./
3. Add Environment Variables in Dashboard
4. Deploy!`
                }
            ]
        };

        // --- STATE MANAGEMENT ---
        let currentTab = 'overview';
        let currentStep = 0;
        let selectedFeatureId = 'chat';

        // --- DOM ELEMENTS ---
        const els = {
            tabs: {
                overview: document.getElementById('tab-overview'),
                tech: document.getElementById('tab-tech'),
                guide: document.getElementById('tab-guide')
            },
            contents: {
                overview: document.getElementById('content-overview'),
                tech: document.getElementById('content-tech'),
                guide: document.getElementById('content-guide')
            },
            featureList: document.getElementById('feature-list'),
            featureDetail: {
                title: document.getElementById('detail-title'),
                desc: document.getElementById('detail-desc'),
                tech: document.getElementById('detail-tech'),
                icon: document.getElementById('bg-icon')
            },
            stepperNav: document.getElementById('stepper-nav'),
            stepContent: document.getElementById('step-content'),
            btnPrev: document.getElementById('btn-prev'),
            btnNext: document.getElementById('btn-next')
        };

        // --- INITIALIZATION ---
        function init() {
            renderFeatures();
            updateFeatureDetail('chat'); // Default
            renderStepper();
            updateStep(0);
            
            // Charts are rendered when tab is switched to 'tech' to ensure canvas dimensions are correct
        }

        // --- TAB NAVIGATION ---
        window.switchTab = function(tabName) {
            // Update Tab Styles
            Object.keys(els.tabs).forEach(t => {
                if (t === tabName) {
                    els.tabs[t].classList.add('tab-active', 'border-b-2', 'border-blue-500', 'text-blue-700');
                    els.tabs[t].classList.remove('border-transparent', 'text-gray-500');
                } else {
                    els.tabs[t].classList.remove('tab-active', 'border-b-2', 'border-blue-500', 'text-blue-700');
                    els.tabs[t].classList.add('border-transparent', 'text-gray-500');
                }
            });

            // Update Content Visibility
            Object.keys(els.contents).forEach(c => {
                if (c === tabName) {
                    els.contents[c].classList.remove('hidden');
                } else {
                    els.contents[c].classList.add('hidden');
                }
            });

            currentTab = tabName;

            // Trigger Chart Render if tech tab
            if (tabName === 'tech') {
                setTimeout(renderCharts, 100); // Small delay for layout calculation
            }
        };

        // --- FEATURE SECTION LOGIC ---
        function renderFeatures() {
            els.featureList.innerHTML = appData.features.map(f => `
                <div onclick="updateFeatureDetail('${f.id}')" 
                     class="p-4 rounded-lg border border-gray-200 cursor-pointer transition-all hover:shadow-md hover:border-blue-300 bg-white flex items-center space-x-4 group">
                    <div class="text-2xl bg-${f.color}-50 w-10 h-10 flex items-center justify-center rounded-full group-hover:scale-110 transition-transform">
                        ${f.icon}
                    </div>
                    <div>
                        <h4 class="font-semibold text-gray-800 group-hover:text-blue-600 transition-colors">${f.title}</h4>
                        <p class="text-xs text-gray-500">Click to view details</p>
                    </div>
                </div>
            `).join('');
        }

        window.updateFeatureDetail = function(id) {
            const f = appData.features.find(item => item.id === id);
            if (!f) return;

            // Animate out
            const container = document.getElementById('feature-detail-content');
            container.style.opacity = '0';

            setTimeout(() => {
                els.featureDetail.title.textContent = f.title;
                els.featureDetail.desc.textContent = f.desc;
                els.featureDetail.tech.textContent = f.tech;
                els.featureDetail.icon.textContent = f.icon;
                
                // Animate in
                container.style.opacity = '1';
            }, 300);
        };

        // --- CHARTS LOGIC (Chart.js) ---
        let chartsRendered = false;
        function renderCharts() {
            if (chartsRendered) return;

            // Chart 1: Stack Composition (Doughnut)
            const ctxStack = document.getElementById('stackChart').getContext('2d');
            new Chart(ctxStack, {
                type: 'doughnut',
                data: {
                    labels: ['React (Frontend)', 'Tailwind (Style)', 'Node/Express (Backend)', 'Socket.io (Real-time)', 'MongoDB (Data)'],
                    datasets: [{
                        data: [30, 15, 20, 15, 20], // Estimated weight
                        backgroundColor: ['#3b82f6', '#06b6d4', '#22c55e', '#f97316', '#10b981'],
                        borderWidth: 0
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: { position: 'bottom', labels: { usePointStyle: true, boxWidth: 8 } }
                    }
                }
            });

            // Chart 2: Capabilities (Radar)
            const ctxRadar = document.getElementById('radarChart').getContext('2d');
            new Chart(ctxRadar, {
                type: 'radar',
                data: {
                    labels: ['Real-time', 'Scalability', 'UI/UX', 'Maintainability', 'Security'],
                    datasets: [{
                        label: 'CampusConnect Score',
                        data: [9, 8, 9, 8, 7], // Mock scores based on stack analysis
                        fill: true,
                        backgroundColor: 'rgba(59, 130, 246, 0.2)',
                        borderColor: 'rgb(59, 130, 246)',
                        pointBackgroundColor: 'rgb(59, 130, 246)',
                        pointBorderColor: '#fff',
                        pointHoverBackgroundColor: '#fff',
                        pointHoverBorderColor: 'rgb(59, 130, 246)'
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        r: {
                            angleLines: { color: '#e5e7eb' },
                            grid: { color: '#e5e7eb' },
                            suggestedMin: 0,
                            suggestedMax: 10,
                            ticks: { display: false } // Hide numbers for cleaner look
                        }
                    },
                    plugins: {
                        legend: { display: false }
                    }
                }
            });

            chartsRendered = true;
        }

        // --- STEPPER LOGIC ---
        function renderStepper() {
            els.stepperNav.innerHTML = appData.steps.map((step, index) => `
                <button onclick="updateStep(${index})" class="w-full text-left px-4 py-3 border-b border-gray-100 flex items-center justify-between hover:bg-gray-50 transition-colors focus:outline-none ${index === currentStep ? 'bg-blue-50 text-blue-700 font-semibold' : 'text-gray-500'}">
                    <span>${index + 1}. ${step.title}</span>
                    <span class="${index === currentStep ? 'opacity-100' : 'opacity-0'}">→</span>
                </button>
            `).join('');
        }

        window.updateStep = function(index) {
            currentStep = index;
            const s = appData.steps[index];
            
            // Update Nav Styles
            renderStepper(); // Re-render to update active classes

            // Update Content with fade effect
            els.stepContent.innerHTML = `
                <div class="fade-in">
                    <h3 class="text-xl font-bold text-white mb-2">${s.title}</h3>
                    <p class="text-gray-400 mb-6">${s.desc}</p>
                    <div class="bg-gray-800 rounded-lg p-4 font-mono text-sm text-green-400 overflow-x-auto code-scroll border border-gray-700 shadow-inner">
                        <pre>${s.code}</pre>
                    </div>
                </div>
            `;

            // Update Buttons
            els.btnPrev.disabled = index === 0;
            els.btnNext.disabled = index === appData.steps.length - 1;
            els.btnNext.textContent = index === appData.steps.length - 1 ? 'Finish' : 'Next Step →';
        };

        window.nextStep = function() {
            if (currentStep < appData.steps.length - 1) {
                updateStep(currentStep + 1);
            }
        };

        window.prevStep = function() {
            if (currentStep > 0) {
                updateStep(currentStep - 1);
            }
        };

        // Run Init
        window.addEventListener('DOMContentLoaded', init);

    </script>
</body>
</html>
