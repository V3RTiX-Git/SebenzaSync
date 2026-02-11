#!/bin/bash

# SebenzaSync Setup Script

echo "🚀 Setting up SebenzaSync..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 18+ first."
    exit 1
fi

echo "✅ Node.js found: $(node --version)"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Copy environment file if it doesn't exist
if [ ! -f .env ]; then
    echo "📝 Creating .env file from .env.example..."
    cp .env.example .env
    echo "⚠️  Please update .env with your actual values before running the app."
else
    echo "✅ .env file already exists"
fi

# Initialize Husky (new method for Husky 9+)
echo "🐶 Setting up Husky git hooks..."
npx husky init
echo "npm run lint" > .husky/pre-commit

# Initialize Git if not already done
if [ ! -d .git ]; then
    echo "🔧 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit: Project scaffold"
    
    echo "🌿 Creating feature branch..."
    git checkout -b feature/scaffold
else
    echo "✅ Git repository already initialized"
fi

echo ""
echo "✨ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Update .env with your database and S3 credentials"
echo "2. Run 'npx prisma generate' to generate Prisma client"
echo "3. Run 'npx prisma migrate dev --name init' to create database"
echo "4. Run 'npm run dev' to start the development server"
echo ""
echo "Happy coding! 🎉"
