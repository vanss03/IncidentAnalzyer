# PowerShell script to set up and activate virtual environment
# Run this script with: .\setup_env.ps1

Write-Host "Setting up virtual environment for ICMAnalyzer..." -ForegroundColor Green

# Check if virtual environment already exists
if (Test-Path "venv") {
    Write-Host "Virtual environment already exists." -ForegroundColor Yellow
} else {
    Write-Host "Creating virtual environment..." -ForegroundColor Blue
    python -m venv venv
    Write-Host "Virtual environment created successfully!" -ForegroundColor Green
}

# Activate virtual environment
Write-Host "Activating virtual environment..." -ForegroundColor Blue
& "venv\Scripts\Activate.ps1"

# Install requirements
if (Test-Path "requirements.txt") {
    Write-Host "Installing requirements..." -ForegroundColor Blue
    pip install -r requirements.txt
    Write-Host "Requirements installed successfully!" -ForegroundColor Green
} else {
    Write-Host "No requirements.txt found. Installing openai package..." -ForegroundColor Yellow
    pip install openai
}

Write-Host "Setup complete! You can now run your Python scripts." -ForegroundColor Green
Write-Host "To deactivate the virtual environment later, run: deactivate" -ForegroundColor Cyan