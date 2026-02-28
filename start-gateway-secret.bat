@echo off
setlocal
set OPENCLAW_GATEWAY_TOKEN=secret
cd /d E:\archon_ai\claw
pnpm gateway:dev
endlocal
