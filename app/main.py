import os
from fastapi import FastAPI

app = FastAPI(title="Cloud DevOps Platform API")

@app.get("/")
def read_root():
    return {
        "status": "online",
        "app_name": "DevOps Capstone API",
        "environment": os.getenv("ENVIRONMENT", "development")
    }

@app.get("/healthz")
def health_check():
    return {"status": "healthy"}