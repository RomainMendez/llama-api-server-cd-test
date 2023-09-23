#!/bin/bash

# Install dependencies
pip install llama-api-server
pip install llama-cpp-python --force-reinstall --upgrade --no-cache-dir

# Run the server
python -m llama_api_server --host=0.0.0.0