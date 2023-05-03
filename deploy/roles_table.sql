-- Deploy rate-my-snacks-db:roles_table to pg
-- requires: appschema

BEGIN;

CREATE TABLE rms_schema.roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

COMMIT;
