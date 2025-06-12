#!/bin/bash

echo "Starting SwarmUI..."

ls -lah

if [ ! -d "$(pwd)/swarm-ui" ]; then
	echo "SwarmUI not found, cloning repository..."
	git clone https://github.com/mcmonkeyprojects/SwarmUI swarm-ui
fi

cd swarm-ui

./launch-linux.sh --launch_mode none --host 0.0.0.0
