#!/usr/bin/sh

# Set the PostgreSQL user to "postgres"
export PGUSER="postgres"

# Create the "ecommerce" database if it does not exist
# Note: Standard PostgreSQL does not support "IF NOT EXISTS" in CREATE DATABASE
psql -c "CREATE DATABASE IF NOT EXISTS ecommerce"

# Connect to the "ecommerce" database and create the "uuid-ossp" extension if it does not exist
psql ecommerce -c "CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\";"
