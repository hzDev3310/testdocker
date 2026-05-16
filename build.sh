#!/bin/bash
# build.sh

echo "📦 1. Building React Frontend..."
cd frontend && docker compose run --rm frontend npm run build && cd ..

echo "🐘 2. Installing Production Laravel Dependencies..."
cd backend
# Runs composer install inside your backend container without dev packages
docker compose run --rm backend composer install --no-dev --optimize-autoloader
cd ..

echo "✅ Full-stack production build complete!"
echo "🚀 Everything is ready inside your 'backend/' folder. You can now commit and push!"