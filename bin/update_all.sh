#!/bin/bash
set -e

echo "Pulling new iamge locally"
./pull.sh

echo "Killing and removing existing server."
./kill.sh
./rm.sh

sudo docker ps

echo "Restarting servers"

sudo ./run-backend.sh
sudo ./run-frontend.sh

