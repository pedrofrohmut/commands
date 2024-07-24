# Creates the docker container(s) based on the docker-compose.yml file
# -d for daemon mode
sudo docker compose up -d

# Remove the container also based on the docker-compose.yml
sudo docker compose down

# Enters in the docker container in interactive mode
sudo docker exec -it my_container bash

### SQL File to docker container

# Copy to the container
sudo docker cp ./my_file.sql my-container:/my-file.sql

# Execute the file in the postgres
sudo docker exec -i my-container psql -U postgres -f /my-file.sql
