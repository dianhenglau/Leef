-- This script create database and role. It should be run by user (e.g.
-- `postgres`) that has required permissions.

CREATE ROLE leev_admin LOGIN;
CREATE ROLE leev_user LOGIN;

CREATE DATABASE leev OWNER leev_admin;

