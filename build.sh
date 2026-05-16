#!/bin/bash
# build.sh

echo "📦 Building React Frontend..."
cd frontend && npm run build && cd ..

echo "✅ React built directly into backend/public!"
echo "🚀 You can now commit and push to trigger the pipeline."