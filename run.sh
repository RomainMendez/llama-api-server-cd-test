#!/bin/bash

# Install dependencies
pip install llama-api-server

# Run the server
python -m llama_api_server --host=0.0.0.0