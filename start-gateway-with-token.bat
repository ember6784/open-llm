@echo off
REM Start OpenClaw Gateway with explicit token

set OPENCLAW_GATEWAY_TOKEN=secret
echo Starting Gateway with token="secret"
echo.

cd /d E:\archon_ai\claw
pnpm gateway:dev
