<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Mariem App</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', sans-serif; background: #f0f4f8; }
        nav { background: #1a1a2e; padding: 15px 40px; display: flex; justify-content: space-between; align-items: center; }
        nav .logo { color: #e94560; font-size: 24px; font-weight: bold; }
        nav ul { list-style: none; display: flex; gap: 30px; }
        nav ul li a { color: white; text-decoration: none; }
        .hero { background: #1a1a2e; color: white; text-align: center; padding: 100px 20px; }
        .hero h1 { font-size: 48px; margin-bottom: 20px; }
        .hero h1 span { color: #e94560; }
        .hero p { font-size: 18px; color: #aaa; margin-bottom: 40px; }
        .hero .btn { background: #e94560; color: white; padding: 15px 40px; border-radius: 30px; font-size: 16px; text-decoration: none; }
        .cards { display: flex; justify-content: center; gap: 30px; padding: 60px 40px; flex-wrap: wrap; }
        .card { background: white; border-radius: 15px; padding: 40px 30px; text-align: center; width: 250px; box-shadow: 0 5px 20px rgba(0,0,0,0.1); }
        .card .icon { font-size: 50px; margin-bottom: 20px; }
        .card h3 { color: #1a1a2e; margin-bottom: 10px; }
        .card p { color: #666; font-size: 14px; }
        footer { background: #1a1a2e; color: #aaa; text-align: center; padding: 20px; }
        footer span { color: #e94560; }
    </style>
</head>
<body>
<nav>
    <div class="logo">MARIEM</div>
    <ul>
        <li><a href="#">Accueil</a></li>
        <li><a href="#">A propos</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Contact</a></li>
    </ul>
</nav>
<div class="hero">
    <h1>Bienvenue chez <span>Mariem</span></h1>
    <p>Application deployee avec GIT - Jenkins - Maven - Tomcat</p>
    <a href="#" class="btn">Decouvrir</a>
</div>
<div class="cards">
    <div class="card">
        <div class="icon">🐳</div>
        <h3>Docker</h3>
        <p>Services conteneurises DNS, DHCP, Web, VoIP</p>
    </div>
    <div class="card">
        <div class="icon">⚙️</div>
        <h3>Jenkins</h3>
        <p>CI/CD automatique avec pipeline GitHub</p>
    </div>
    <div class="card">
        <div class="icon">☸️</div>
        <h3>Kubernetes</h3>
        <p>Cluster K3s haute disponibilite</p>
    </div>
    <div class="card">
        <div class="icon">📊</div>
        <h3>Prometheus</h3>
        <p>Supervision et alertes Grafana</p>
    </div>
</div>
<footer>
    <p>Developpe par <span>Mariem</span> - Projet PFE Telecommunications</p>
</footer>
</body>
</html>
