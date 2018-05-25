-- This script create database and role. It should be run by user (e.g.
-- `postgres`) that has permissions to create role and create database.

-- This role is created to manage the `leev` database, e.g. create tables.
-- You can use this role to run `psql`. REMEMBER TO CHANGE THE PASSWORD!
CREATE ROLE leev_admin LOGIN PASSWORD 'foo';

-- This role is created to use the `leev` database, e.q. query. REMEMBER TO
-- CHANGE THE PASSWORD!
CREATE ROLE leev_user LOGIN PASSWORD 'bar';

CREATE DATABASE leev OWNER leev_admin;

