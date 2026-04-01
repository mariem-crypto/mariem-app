<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elite Telecom</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', sans-serif; background: #f5f5f5; }
        nav {
            background: white;
            padding: 15px 60px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        nav .logo { color: #0066cc; font-size: 26px; font-weight: bold; letter-spacing: 2px; }
        nav .logo span { color: #ff6600; }
        nav ul { list-style: none; display: flex; gap: 30px; }
        nav ul li a { color: #333; text-decoration: none; font-size: 15px; font-weight: 500; }
        nav ul li a:hover { color: #0066cc; }
        nav .btn-nav { background: #0066cc; color: white; padding: 10px 25px; border-radius: 25px; text-decoration: none; }
        nav .btn-nav:hover { background: #0052a3; }

        .hero {
            background: linear-gradient(135deg, #0066cc, #004499);
            color: white;
            text-align: center;
            padding: 120px 20px;
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,102,0,0.1) 0%, transparent 60%);
        }
        .hero h1 { font-size: 52px; margin-bottom: 20px; font-weight: 700; }
        .hero h1 span { color: #ff6600; }
        .hero p { font-size: 20px; color: #cce0ff; margin-bottom: 40px; max-width: 600px; margin-left: auto; margin-right: auto; }
        .hero-btns { display: flex; gap: 20px; justify-content: center; }
        .btn-primary { background: #ff6600; color: white; padding: 15px 40px; border-radius: 30px; text-decoration: none; font-size: 16px; font-weight: 600; }
        .btn-secondary { background: transparent; color: white; padding: 15px 40px; border-radius: 30px; text-decoration: none; font-size: 16px; border: 2px solid white; }
        .btn-primary:hover { background: #e55a00; }
        .btn-secondary:hover { background: rgba(255,255,255,0.1); }

        .stats {
            display: flex;
            justify-content: center;
            gap: 0;
            background: white;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }
        .stat {
            text-align: center;
            padding: 30px 60px;
            border-right: 1px solid #eee;
        }
        .stat:last-child { border-right: none; }
        .stat h2 { font-size: 36px; color: #0066cc; font-weight: 700; }
        .stat p { color: #666; font-size: 14px; margin-top: 5px; }

        .services {
            padding: 80px 60px;
            text-align: center;
        }
        .services h2 { font-size: 36px; color: #1a1a2e; margin-bottom: 10px; }
        .services p { color: #666; margin-bottom: 50px; font-size: 16px; }
        .services-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            max-width: 1100px;
            margin: 0 auto;
        }
        .service-card {
            background: white;
            border-radius: 15px;
            padding: 40px 30px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            transition: transform 0.3s, box-shadow 0.3s;
            text-align: left;
        }
        .service-card:hover { transform: translateY(-10px); box-shadow: 0 15px 40px rgba(0,0,0,0.15); }
        .service-card .icon {
            width: 60px;
            height: 60px;
            background: #e8f0fe;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
            margin-bottom: 20px;
        }
        .service-card h3 { color: #1a1a2e; font-size: 20px; margin-bottom: 12px; }
        .service-card p { color: #666; font-size: 14px; line-height: 1.7; }

        .about {
            background: #0066cc;
            color: white;
            padding: 80px 60px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 60px;
        }
        .about-text { flex: 1; }
        .about-text h2 { font-size: 36px; margin-bottom: 20px; }
        .about-text h2 span { color: #ff6600; }
        .about-text p { color: #cce0ff; line-height: 1.8; font-size: 16px; margin-bottom: 30px; }
        .about-stats { flex: 1; display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px; }
        .about-stat { background: rgba(255,255,255,0.1); border-radius: 12px; padding: 25px; text-align: center; }
        .about-stat h3 { font-size: 32px; color: #ff6600; }
        .about-stat p { color: #cce0ff; font-size: 13px; margin-top: 5px; }

        footer {
            background: #1a1a2e;
            color: #aaa;
            text-align: center;
            padding: 30px;
        }
        footer .logo { color: #0066cc; font-size: 22px; font-weight: bold; margin-bottom: 10px; }
        footer .logo span { color: #ff6600; }
        footer p { font-size: 13px; }
        footer span.highlight { color: #ff6600; }
    </style>
</head>
<body>

<nav>
    <div class="logo">ELITE<span>TELECOM</span></div>
    <ul>
        <li><a href="#">Accueil</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">A propos</a></li>
        <li><a href="#">Contact</a></li>
    </ul>
    <a href="#" class="btn-nav">Connexion</a>
</nav>

<div class="hero">
    <h1>Solutions <span>Telecom</span> Modernes</h1>
    <p>Infrastructure reseau de nouvelle generation deployee avec Docker, Kubernetes et Jenkins CI/CD</p>
    <div class="hero-btns">
        <a href="#" class="btn-primary">Nos Services</a>
        <a href="#" class="btn-secondary">En savoir plus</a>
    </div>
</div>

<div class="stats">
    <div class="stat"><h2>99.9%</h2><p>Disponibilite reseau</p></div>
    <div class="stat"><h2>3</h2><p>Machines virtuelles</p></div>
    <div class="stat"><h2>5</h2><p>Services deployes</p></div>
    <div class="stat"><h2>24/7</h2><p>Supervision active</p></div>
</div>

<div class="services">
    <h2>Nos Services</h2>
    <p>Une infrastructure complete et moderne pour vos besoins telecom</p>
    <div class="services-grid">
        <div class="service-card">
            <div class="icon">🌐</div>
            <h3>DNS Bind9</h3>
            <p>Resolution de noms de domaine avec zone locale elite.dev.tn et recursion externe configuree.</p>
        </div>
        <div class="service-card">
            <div class="icon">📡</div>
            <h3>DHCP</h3>
            <p>Distribution automatique d'adresses IP aux clients avec plage 172.19.0.100 - 172.19.0.200.</p>
        </div>
        <div class="service-card">
            <div class="icon">🌍</div>
            <h3>Serveur Web</h3>
            <p>Hebergement web avec Nginx comme reverse proxy et applications Java sur Tomcat.</p>
        </div>
        <div class="service-card">
            <div class="icon">📞</div>
            <h3>VoIP Asterisk</h3>
            <p>Telephonie sur IP avec le protocole SIP pour communications internes et externes.</p>
        </div>
        <div class="service-card">
            <div class="icon">☸️</div>
            <h3>Kubernetes K3s</h3>
            <p>Orchestration de containers avec cluster 1 master et 2 workers pour haute disponibilite.</p>
        </div>
        <div class="service-card">
            <div class="icon">📊</div>
            <h3>Supervision</h3>
            <p>Monitoring en temps reel avec Prometheus et dashboards Grafana par service.</p>
        </div>
    </div>
</div>

<div class="about">
    <div class="about-text">
        <h2>Projet <span>PFE</span> Telecommunications</h2>
        <p>Ce projet presente une infrastructure telecom complete et moderne, deployee avec les technologies DevOps les plus recentes incluant Docker, Kubernetes, Jenkins CI/CD et la supervision avec Prometheus et Grafana.</p>
        <a href="#" class="btn-primary">Decouvrir le projet</a>
    </div>
    <div class="about-stats">
        <div class="about-stat"><h3>5</h3><p>Sprints realises</p></div>
        <div class="about-stat"><h3>K3s</h3><p>Cluster Kubernetes</p></div>
        <div class="about-stat"><h3>CI/CD</h3><p>Pipeline Jenkins</p></div>
        <div class="about-stat"><h3>HA</h3><p>Haute disponibilite</p></div>
    </div>
</div>

<footer>
    <div class="logo">ELITE<span>TELECOM</span></div>
    <p>Developpe par <span class="highlight">Mariem</span> — Projet PFE Telecommunications RSI3</p>
</footer>

</body>
</html>
EOF 
