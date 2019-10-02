CREATE database "ICAT";

CREATE ROLE irods WITH LOGIN PASSWORD '{{ database_password }}';
GRANT CONNECT ON DATABASE "ICAT" TO irods;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO irods;
