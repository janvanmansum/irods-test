CREATE ROLE irods WITH LOGIN PASSWORD '{{ database_password }}';
CREATE database "ICAT";
GRANT ALL PRIVILEGES ON DATABASE "ICAT" TO irods;
