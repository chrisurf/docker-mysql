echo "Starting database container.."
docker-compose up -d

sleep 3
echo "Launching phpmyadmin.."
open http://localhost:8081

echo "Connecting to database server.."
docker exec -it mysql-container /bin/sh