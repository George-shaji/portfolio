#!/bin/bash

# Git Setup Script for Portfolio Project
# This script helps initialize git repository and push to GitHub

echo "🔧 Setting up Git repository for George Shaji Portfolio..."

# Initialize git repository if not already initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
else
    echo "✅ Git repository already initialized"
fi

# Create .gitignore if it doesn't exist
if [ ! -f ".gitignore" ]; then
    echo "📝 Creating .gitignore file..."
    # .gitignore content is already created above
fi

# Add all files to git
echo "📁 Adding files to Git..."
git add .

# Commit files
echo "💾 Making initial commit..."
git commit -m "Initial commit: Add portfolio project with deployment setup

- Add modern Vue.js portfolio with responsive design
- Include GitHub Actions workflow for auto-deployment
- Add comprehensive documentation and setup files
- Configure for GitHub Pages deployment"

# Instructions for user
echo ""
echo "🚀 Git repository setup complete!"
echo ""
echo "Next steps to push to GitHub:"
echo "1. Create a new repository on GitHub named 'my-portfolio'"
echo "2. Run the following commands:"
echo ""
echo "   git branch -M main"
echo "   git remote add origin https://github.com/george-shaji/my-portfolio.git"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages in repository settings:"
echo "   - Go to Settings > Pages"
echo "   - Select 'Deploy from a branch'"
echo "   - Choose 'gh-pages' branch"
echo ""
echo "4. Your portfolio will be available at:"
echo "   https://george-shaji.github.io/my-portfolio"
echo ""
echo "📚 For more help, check the README.md file"
