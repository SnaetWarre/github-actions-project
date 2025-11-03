# Quick Setup Guide

## Manual Steps (Must be done first):

1. **Create GitHub Repository**
   - Go to GitHub.com
   - Create a new repository (can be private or public)
   - Note the repository URL

2. **Clone Repository**
   ```bash
   git clone <your-repo-url>
   cd <repo-name>
   ```

3. **Copy Project Files**
   ```bash
   cp -r /home/warre/Documents/howest/Semester_5/MLOps/part_2/github-actions-project/* .
   cp -r /home/warre/Documents/howest/Semester_5/MLOps/part_2/github-actions-project/.github .
   ```

## Automated Steps:

4. **Create Branch and Push**
   ```bash
   git checkout -b 01_DockerTest
   git add .
   git commit -m "Add Dockerfile, HTML page, and GitHub Actions workflows"
   git push -u origin 01_DockerTest
   ```

5. **Configure GitHub Settings**
   - Go to your repository on GitHub
   - Settings > Actions > General
   - Under "Workflow permissions", select "Read and write permissions"
   - Save changes

6. **Create Pull Request**
   - Go to Pull Requests tab
   - Create PR from `01_DockerTest` to `main`
   - This will trigger the workflow

7. **Test Docker Locally (Optional)**
   ```bash
   docker build -t hello-world-nginx:v1 .
   docker run -d -p 8080:80 hello-world-nginx:v1
   # Visit http://localhost:8080 in browser
   docker stop $(docker ps -q --filter ancestor=hello-world-nginx:v1)
   ```

## Self-Hosted Runner Setup (Optional):

If you want to set up a self-hosted runner:
- Go to Repository Settings > Actions > Runners
- Click "New self-hosted runner"
- Follow instructions for your OS (Linux)
- Configure as a service (see assignment instructions)

