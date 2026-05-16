#!/bin/bash
# build.sh

echo "📦 Building React Frontend..."
# Assuming your frontend service name in docker-compose.yml is called 'frontend'
cd frontend && docker compose run --rm frontend npm run build && cd ..

echo "✅ React built directly into backend/public!"
echo "🚀 You can now commit and push to trigger the pipeline."