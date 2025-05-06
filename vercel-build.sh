#!/bin/bash

# Exit on error
set -e

# Install dependencies
echo "Installing dependencies..."
npm install

# Build client
echo "Building client..."
npm run build

# Copy shared schema to API folder
echo "Copying shared schema..."
mkdir -p api/shared
cp -r shared/* api/shared/

# Execute database migration if needed
if [ "$VERCEL_ENV" = "production" ]; then
  echo "Running database migration in production..."
  npx drizzle-kit push --config=./drizzle.config.ts
fi

echo "Build completed successfully!"