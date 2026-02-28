# Start OpenClaw Gateway for Windows PowerShell
# Usage: .\start-gateway.ps1

$env:OPENCLAW_SKIP_CHANNELS = "0"
$env:CLAWDBOT_SKIP_CHANNELS = "0"
$env:NODE_ENV = "development"

Write-Host "Starting OpenClaw Gateway..." -ForegroundColor Green
Write-Host "URL: ws://localhost:18789" -ForegroundColor Cyan

node scripts/run-node.mjs --dev gateway
