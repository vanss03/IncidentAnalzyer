import os
from openai import OpenAI
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# Get configuration from environment variables
api_key = os.getenv("AZURE_OPENAI_API_KEY")
endpoint = os.getenv("AZURE_OPENAI_ENDPOINT")
deployment_name = os.getenv("AZURE_OPENAI_DEPLOYMENT_NAME")
api_version = os.getenv("AZURE_OPENAI_API_VERSION")

# Validate that all required environment variables are set
if not all([api_key, endpoint]):
    raise ValueError("Missing required environment variables. Please check your .env file.")

# Create the OpenAI client with Azure configuration
client = OpenAI(
    api_key=api_key,
    base_url=endpoint
)

try:
    completion = client.chat.completions.create(
        model=deployment_name,
        messages=[
            {
                "role": "user",
                "content": "You are a personal trainer. tell me how to stay motivated for workouts?",
            }
        ],
    )

    print("Response from Azure OpenAI:")
    print(completion.choices[0].message.content)
    
except Exception as e:
    print(f"An error occurred: {e}")
    print("Please check your Azure OpenAI configuration and API key.")