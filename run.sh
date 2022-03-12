echo "Starting database container.."
docker-compose up -d

echo "Launching phpmyadmin.."
open http://localhost:8081

echo "Connecting to database server.."
docker exec -it mysql_mysql_1 /bin/sh