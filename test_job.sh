#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Step 1: Define Environment Variables
PROJECT_NAME="Sample Project"
BUILD_DIR="/var/jenkins_home/workspace/test_project"
LOG_FILE="$BUILD_DIR/test_log.txt"

# Step 2: Setup Environment
echo "🛠 Setting up environment for $PROJECT_NAME..."
#mkdir -p "$BUILD_DIR"
echo "✅ Environment setup complete."
