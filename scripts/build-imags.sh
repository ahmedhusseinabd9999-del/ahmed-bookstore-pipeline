#!/bin/bash
echo "🛠️ Building Images using Podman..."
podman build -t bookstore-frontend ./frontend
podman build -t bookstore-backend ./backend
podman build -t bookstore-db ./database
echo "✅ All images built successfully!"
