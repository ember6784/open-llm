@echo off
setlocal
set OPENCLAW_GATEWAY_TOKEN=secret
cd /d E:\archon_ai\claw
echo Starting Gateway with token=secret...
echo Current directory: %CD%
echo.
pnpm gateway:dev --verbose 2>&1
pause
endlocal
