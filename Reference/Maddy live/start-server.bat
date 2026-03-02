@echo off
cd /d "%~dp0"
echo Starting local server for Maddy 2025 clone...
echo Open in browser: http://localhost:3000
echo Press Ctrl+C to stop.
echo.
where npx >nul 2>&1
if %errorlevel% equ 0 (
  npx -y serve -l 3000
) else (
  where python >nul 2>&1
  if %errorlevel% equ 0 (
    python -m http.server 3000
  ) else (
    echo Install Node.js (for npx serve) or Python, or open index.html directly in your browser.
    pause
  )
)
