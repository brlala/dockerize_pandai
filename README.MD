Create a file .env in the root folder with the following variables
```
BITBUCKET_USERNAME=
BITBUCKET_PASSWORD=
```

Replace the files with the correct configuration
```
pandai-gateway
/configs/config.json
   - mongo_db_user
   - mongo_db_password
   - mongo_db_uri
   - mongo_db_database_dimension
   - mongo_db_database_fact

portal-backend
/configs/config.json
   - MONGO_DB_URI
   - BOT_ABBREVIATION
Requirements:
   - create a portal_user with startup.py script

portal-frontend
/configs
.env file
```

# TODO:
- backend startup.py to take in default arguments