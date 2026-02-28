@echo off
REM Start OpenClaw Gateway with --allow-unconfigured flag

echo ============================================================
echo Starting OpenClaw Gateway with --allow-unconfigured
echo ============================================================
echo.

cd /d E:\archon_ai\claw
pnpm gateway:dev --allow-unconfigured
