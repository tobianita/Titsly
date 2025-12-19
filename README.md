# Titsly – Dockerized URL Shortener (DevOps Portfolio Project)

Titsly is a simple Python-based URL shortener application built to demonstrate **core DevOps concepts** such as containerization, service orchestration, health checks, and dependency management using Docker and Docker Compose.

This project is designed as a **DevOps portfolio project** for junior / entry-level roles.

---

## 🚀 Architecture Overview

The application consists of two main services:

* **Web Service**

  * Python Flask application
  * Exposes HTTP endpoints
  * Includes a `/health` endpoint for container health checks

* **Database Service**

  * PostgreSQL
  * Stores shortened URLs
  * Uses persistent Docker volumes

```
Client
  │
  ▼
Flask Web App (Docker)
  │
  ▼
PostgreSQL (Docker)
```

---

## 🧰 Tech Stack

* Python 3
* Flask
* PostgreSQL
* Docker
* Docker Compose

---

## ⚙️ Features

* Containerized Flask application
* PostgreSQL database with persistent storage
* Docker health checks for the web service
* Service dependency handling with Docker Compose
* Clean startup and restart behavior
* Slim Docker image optimization

---

## 🏃 How to Run the Project Locally

### Prerequisites

* Docker
* Docker Compose

### Start the application

```bash
docker compose up --build
```

### Verify services

```bash
docker ps
```

Expected output:

* `titsly-app` → **healthy**
* `titsly-db` → running

---

## 🔍 Health Check

The web service exposes a health endpoint:

```http
GET /health
```

Test it locally:

```bash
curl http://localhost:5000/health
```

Expected response:

```json
{"status": "OK"}
```

Docker uses this endpoint to determine container health.

---

## 🗄️ Database

PostgreSQL is automatically started via Docker Compose.

Example table:

* `tits`

  * `tinyurl` (VARCHAR)
  * `link` (VARCHAR)

Persistent storage is handled using Docker volumes.

---

## 📁 Project Structure

```
.
├── app.py
├── db.py
├── requirements.txt
├── Dockerfile
├── docker-compose.yml
├── db/
│  
└── README.md
```

---

## 🧠 DevOps Concepts Demonstrated

* Docker image creation using slim base images
* Health checks and service monitoring
* Dependency management between services
* Container networking
* Persistent data using Docker volumes
* Debugging container startup and runtime issues

---

## 🎯 Why This Project

This project was built to:

* Practice real-world DevOps workflows
* Demonstrate Docker and service orchestration skills
* Serve as a portfolio project for junior DevOps roles

---

## 📌 Future Improvements

* Add database health checks
* Add CI pipeline using GitHub Actions
* Add automated tests
* Deploy to a cloud platform (AWS / GCP / Azure / Digitalocean)

---

## 👤 Author

Built by **OLATIDOYE OLUWATOBI* as a DevOps learning and portfolio project.
