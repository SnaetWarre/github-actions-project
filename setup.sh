#!/bin/bash

# GitHub Actions Setup Script
# This script helps you push your project files to GitHub

echo "GitHub Actions Project Setup"
echo "============================"
echo ""
echo "Before running this script, make sure you have:"
echo "1. Created a new GitHub repository"
echo "2. Cloned it to your local machine"
echo ""
read -p "Enter the path to your cloned GitHub repository: " REPO_PATH

if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Directory $REPO_PATH does not exist"
    exit 1
fi

# Copy files to the repository
echo "Copying files to repository..."
cp Dockerfile "$REPO_PATH/"
cp index.html "$REPO_PATH/"
cp -r .github "$REPO_PATH/"
cp README.md "$REPO_PATH/"

cd "$REPO_PATH"

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "Error: $REPO_PATH is not a git repository"
    exit 1
fi

# Create and switch to 01_DockerTest branch
echo "Creating branch 01_DockerTest..."
git checkout -b 01_DockerTest

# Add files
echo "Adding files..."
git add .

# Commit
echo "Committing files..."
git commit -m "Add Dockerfile, HTML page, and GitHub Actions workflows"

echo ""
echo "Setup complete! Next steps:"
echo "1. Push the branch: git push -u origin 01_DockerTest"
echo "2. Create a pull request from 01_DockerTest to main"
echo "3. Configure GitHub Container Registry permissions:"
echo "   - Go to Repository Settings > Actions > General"
echo "   - Enable 'Read and write permissions' for GitHub Actions"
echo "4. Go to Actions tab and run the workflows"

