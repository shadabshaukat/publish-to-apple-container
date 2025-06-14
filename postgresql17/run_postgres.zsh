#!/bin/zsh

set -e

echo "\n🚀 Starting container system..."
container system start
sleep 1

echo "\n🔧 Building Docker container from Dockerfile..."
container build --tag postgresql17 --file Dockerfile .
sleep 1

echo "\n📦 Listing container images..."
container image list
sleep 1

echo "\n🚀 Running container 'postgresql17' in detached mode..."
container run -d --name postgresql17 postgresql17
sleep 1

echo "\n📋 Listing all containers..."
container ls -a
sleep 1

echo "\n🖥️ Launching interactive shell into 'postgresql17' container..."
sleep 1

container exec -it postgresql17 /bin/bash -c "
echo '\n💡 Inside container shell...'
echo '\n🔁 Current shell:'
echo \$SHELL
sleep 1
echo '\n📡 Connecting to PostgreSQL...'
PGPASSWORD=mypasswd1234 psql -h 192.168.64.3 -p 5432 -U postgres -d myappdb -c 'select version();'
sleep 2
echo '\n👋 Exiting psql...'
"

echo "\n✅ Script completed. Container is up and database is accessible.\n"

