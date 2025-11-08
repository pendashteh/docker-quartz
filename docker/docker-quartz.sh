#!/bin/bash
set -e

PORT=${1:-8080}

# Validate mount
if [ ! -d "/vault" ]; then
  echo "Error: /vault is not mounted. Use -v /path/to/vault:/vault"
  exit 1
fi

# Replace Quartz content with vault
rm -rf /quartz/content
ln -s /vault /quartz/content

# Build and serve
cd /quartz
npx quartz build --serve --port "$PORT"
