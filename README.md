# Secure WSO2 Infrastructure Delivery Pipeline

An automated, end-to-end continuous integration and deployment (CI/CD) system engineered to manage configuration injection, vulnerability management, and infrastructure orchestration for enterprise WSO2 middleware services.



## 🏗️ Architecture Blueprint
1. **Source Blueprint:** Custom WSO2 `deployment.toml` settings mapped into a localized multi-stage Docker environment wrapper.
2. **Automation Runner:** GitHub Actions coordinates automated linting, building, and validation workflows.
3. **Shift-Left Security:** Trivy container scans intercept and evaluate incoming image dependencies against public CVE catalogs before distribution.
4. **Identity Attestation:** OpenID Connect (OIDC) assigns short-lived, programmatic token profiles to communicate securely with cloud infrastructures without embedding static password keys.
5. **Registry Layer:** Amazon Elastic Container Registry (ECR) operates as the isolated artifact storage vault.
6. **Live Execution Target:** Targeted Bash scripts establish secure remote runtime boundaries on an AWS EC2 host to pull, recycle, and maintain active runtime packages.

## 🚀 Pipeline Status & Stages
* **Stage 1:** Code Integration & Workspace Ingestion (`actions/checkout`)
* **Stage 2:** Image Compilation (`docker build`)
* **Stage 3:** Automated Vulnerability Guard (`trivy-action`)
* **Stage 4:** Dynamic STS Authentication Provider Checks (`configure-aws-credentials`)
* **Stage 5:** Target Node Automation Deployment Scripting (`ssh-action`)
