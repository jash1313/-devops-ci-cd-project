![CI/CD Pipeline](https://github.com/jash1313/devops-ci-cd-project/actions/workflows/deploy.yml/badge.svg)

# DevOps CI/CD Pipeline Project

A Flask web application with a fully automated CI/CD pipeline — from code to production with zero manual steps.

🌍 **Live:** http://16.171.129.239

---

## Architecture

```
Developer → GitHub → GitHub Actions → Docker Hub → AWS EC2 → Nginx → Users
```

---

## Tech Stack

- **App:** Python, Flask
- **Container:** Docker, Docker Hub
- **CI/CD:** GitHub Actions
- **Cloud:** AWS EC2 (Ubuntu 22.04)
- **Server:** Nginx
- **Registry:** Docker Hub

---

## Endpoints

| Route | Description |
|-------|-------------|
| `/` | Home page |
| `/about` | About page |
| `/health` | Health check |

---

## CI/CD Flow

1. Developer pushes code to GitHub
2. GitHub Actions triggers automatically
3. Docker image built and pushed to Docker Hub
4. EC2 pulls latest image
5. Health check verified
6. App live with zero manual steps

---

## Local Setup

```bash
git clone https://github.com/jash1313/devops-ci-cd-project.git
cd devops-ci-cd-project
pip install -r requirements.txt
python3 app.py
```

## Docker Setup

```bash
docker build -t devops-project .
docker run -p 5000:5000 devops-project
```

## Docker Hub

```bash
docker pull jashwanthh1/devops-project:latest
```

---

## Secrets Used

| Secret | Purpose |
|--------|---------|
| DOCKER_USERNAME | Docker Hub login |
| DOCKER_PASSWORD | Docker Hub login |
| EC2_HOST | Server IP |
| EC2_USER | SSH user |
| EC2_SSH_KEY | SSH private key |

---

## Project Structure

```
devops-ci-cd-project/
├── .github/
│   └── workflows/
│       └── deploy.yml
├── templates/
│   ├── index.html
│   └── about.html
├── app.py
├── requirements.txt
├── Dockerfile
├── .gitignore
└── README.md
```
