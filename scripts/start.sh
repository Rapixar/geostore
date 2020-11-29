
#!/usr/bin/env bash

echo "deploying application"

sudo -u postgres createdb geostore
sudo -u postgres psql -d geostore -f ./doc/sql/001_setup_db.sql
sudo -u postgres psql -U geostore -d geostore -f ./doc/sql/002_create_schema_postgres.sql

cd src
mvn clean install -Dovrdir=postgres -Ppostgres
cd /src/web/app
mvn jetty:run


echo "done deploying application"