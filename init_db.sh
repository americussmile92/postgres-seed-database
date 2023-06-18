/usr/bin/bash

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    GRANT ALL PRIVILEGES ON DATABASE test_db TO postgres;
EOSQL

psql -f /db-dumps/dump.sql test_db
