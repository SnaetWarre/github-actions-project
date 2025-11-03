# GitHub Actions Project

A simple HTML website containerized with Docker and automated with GitHub Actions.

## Files

- `Dockerfile` - Builds an nginx container serving the HTML files
- `index.html` - Simple Hello World webpage
- `.github/workflows/` - GitHub Actions workflow files

## Usage

Build and run locally:
```bash
docker build -t hello-world-nginx:v1 .
docker run -d -p 8080:80 hello-world-nginx:v1
```

