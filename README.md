# ICM Analyzer - Virtual Environment Setup Guide

## Quick Setup
Run this command to set up everything automatically:
```powershell
.\setup_env.ps1
```

## Manual Setup

### 1. Create Virtual Environment
```powershell
python -m venv venv
```

### 2. Activate Virtual Environment
```powershell
venv\Scripts\Activate.ps1
```

If you get an execution policy error:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### 3. Install Dependencies
```powershell
pip install -r requirements.txt
```

### 4. Configure Environment Variables
Copy the example environment file and configure your Azure OpenAI settings:
```powershell
copy .env.example .env
```

Then edit `.env` with your actual Azure OpenAI configuration:
- `AZURE_OPENAI_API_KEY`: Your Azure OpenAI API key
- `AZURE_OPENAI_ENDPOINT`: Your Azure OpenAI endpoint URL
- `AZURE_OPENAI_DEPLOYMENT_NAME`: Your model deployment name
- `AZURE_OPENAI_API_VERSION`: The API version to use

### 5. Verify Installation
```powershell
python main.py
```

## Usage

### Activate Virtual Environment
```powershell
venv\Scripts\Activate.ps1
```

### Deactivate Virtual Environment
```powershell
deactivate
```

### Run Your Scripts
```powershell
python main.py
```

## Security Notes
- The `.env` file contains sensitive information and is excluded from version control
- Never commit your API keys to version control
- Use `.env.example` as a template for required environment variables

## Notes
- Always activate the virtual environment before running your Python scripts
- When the virtual environment is active, you'll see `(venv)` in your command prompt
- The virtual environment keeps your project dependencies separate from your system Python