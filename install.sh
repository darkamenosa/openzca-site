#!/usr/bin/env bash
set -euo pipefail

if ! command -v node >/dev/null 2>&1; then
  echo "Error: Node.js is required (>=18). Install from https://nodejs.org/"
  exit 1
fi

if ! command -v npm >/dev/null 2>&1; then
  echo "Error: npm is required."
  exit 1
fi

NODE_MAJOR="$(node -v | sed -E 's/^v([0-9]+).*/\1/')"
if [ "${NODE_MAJOR}" -lt 18 ]; then
  echo "Error: Node.js >= 18 is required. Current: $(node -v)"
  exit 1
fi

echo "Installing openzca globally..."
npm i -g openzca@latest

echo "Installed. Run: openzca --help"
