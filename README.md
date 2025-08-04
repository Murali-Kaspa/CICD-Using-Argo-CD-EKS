Hello,

In this Project i am going to deploy a web-application from scratch to cluster.

FLOW-1 : 
Source Code (GitHub) > Jenkins Pipeline (CI/CD) > Maven > SonarQube > Docker Create a image by using Dockerfile in GitHub >  Update the CD file in GitHub Repo > EKS. 

We can deploy the application by using above flow, previously some organisations follow that process they take the image and deploy it to k8 by usng ansible playbooks.

But now, we can use ArgoCD for deploying to EKS..

Hmm, But why ??

Because we cannot track the changes of deployment, So we need a tool for it so we use ArgoCD. ArgoCD thinks Github Repo is ths SPOT (Single Point of Truth), so whenever a change happen in Repo, ArgoCD Deployment it automatically ..


FLOW-2 :

Source Code (GitHub) > Jenkins Pipeline (CI/CD) > Maven > SonarQube > Docker Create a image by using Dockerfile in GitHub >  Update the CD file in GitHub Repo > ArgoCD > EKS. 
