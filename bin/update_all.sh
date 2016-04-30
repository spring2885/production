#!/bin/bash
set -e

echo "Pulling new iamge locally"
./pull.sh

echo "Killing and removing existing server."
./kill.sh
./rm.sh

docker ps

echo "Restarting servers"

./run-backend.sh
./run-frontend.sh

