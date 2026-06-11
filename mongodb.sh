# Start interactive bash in the container
sudo docker exec -it mongo_container bash

# Admin login
mongosh --username username --password password --authenticationDatabase admin
mongosh -u username -p password --authenticationDatabase admin

# Regular login
mongosh -u username -p password

## In the MongoSH ##############################################################

show dbs

use mydb

show collections

db.mycollection.find()

db.mycollection.find().pretty()
