<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Murali Kaspa - CI/CD Pipeline</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            margin: 0;
            padding: 20px;
        }
        header {
            background: #0077cc;
            color: white;
            padding: 20px;
            text-align: center;
        }
        section {
            background: white;
            margin-top: 20px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        h2 {
            color: #333;
        }
        code {
            background-color: #f0f0f0;
            padding: 2px 6px;
            border-radius: 4px;
        }
        a {
            color: #0077cc;
            text-decoration: none;
        }
    </style>
</head>
<body>

<header>
    <h1>CI/CD Pipeline</h1>
</header>



<section>
    <h2>🚀 Deployment Flow</h2>
    <ul>
        <li><strong>GitHub:</strong> Code stored and managed.</li>
        <li><strong>Jenkins:</strong> CI pipeline with SonarQube, Docker, and Trivy.</li>
        <li><strong>Docker Hub:</strong> Image push with versioning.</li>
        <li><strong>Argo CD:</strong> Auto-sync deployment files from GitHub.</li>
        <li><strong>EKS:</strong> Hosts the updated application image.</li>
    </ul>
</section>

<footer style="text-align: center; margin-top: 40px; font-size: 14px;">
    © 2025 Murali Kaspa | DevOps Engineer
</footer>

</body>
</html>
