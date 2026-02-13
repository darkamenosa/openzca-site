$ErrorActionPreference = "Stop"

if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
  Write-Error "Node.js is required (>=18). Install from https://nodejs.org/"
}

if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
  Write-Error "npm is required."
}

$nodeVersion = node -v
$major = [int]($nodeVersion -replace '^v([0-9]+).*', '$1')
if ($major -lt 18) {
  Write-Error "Node.js >= 18 is required. Current: $nodeVersion"
}

Write-Host "Installing openzca globally..."
npm i -g openzca@latest

Write-Host "Installed. Run: openzca --help"
