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
    </style>
</head>
<body>

<header>
    <h1>Murali Kaspa - CI/CD Pipeline Workflow</h1>
</header>

<section>
    <h2>🔁 GitHub</h2>
    <p>Code is stored in GitHub repository <code>CICD-Using-Argo-CD-EKS</code> on branch <code>main</code>.</p>
</section>

<section>
    <h2>⚙️ Jenkins Pipeline</h2>
    <ol>
        <li><strong>Clean Workspace:</strong> Cleans up Jenkins working directory using <code>cleanWs()</code>.</li>
        <li><strong>Clone Git Repo:</strong> Clones the GitHub repo using Git credentials.</li>
        <li><strong>SonarQube Scan:</strong> Analyzes code quality with SonarQube using Maven goal <code>sonar:sonar</code>.</li>
        <li><strong>Build Artifacts:</strong> Uses Maven to package the code into a JAR file: <code>mvn clean package</code>.</li>
        <li><strong>Docker Build:</strong> Builds Docker image with tag <code>muralikaspa1998/myimage:${BUILD_NUMBER}</code>.</li>
        <li><strong>Trivy Install:</strong> Downloads and installs Trivy to scan images for vulnerabilities.</li>
        <li><strong>Trivy Scan:</strong> Scans Docker image for <code>CRITICAL</code> and <code>HIGH</code> severity vulnerabilities.</li>
        <li><strong>Push Docker Image:</strong> Pushes image to Docker Hub using credentials.</li>
        <li><strong>Update Deployment YAML:</strong>
            <ul>
                <li>Replaces image version in <code>deployment.yml</code> using <code>sed</code>.</li>
                <li>Commits and pushes updated YAML back to GitHub repo.</li>
            </ul>
        </li>
    </ol>
</section>

<section>
    <h2>🚀 GitOps with Argo CD</h2>
    <p>Argo CD watches the updated <code>deployment.yml</code> and syncs changes automatically to the Kubernetes cluster (EKS).</p>
</section>

<section>
    <h2>☁️ Deployment to EKS</h2>
    <p>The updated image is pulled into the EKS cluster, and the new version of the application is deployed using the updated deployment manifest.</p>
</section>

<footer style="text-align: center; margin-top: 40px; font-size: 14px;">
    © 2025 Murali Kaspa | DevOps Engineer
</footer>

</body>
</html>
