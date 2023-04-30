-- Deploy rate-my-snacks-db:add_pgcrypto_extension to pg
-- requires: appschema

BEGIN;

CREATE EXTENSION IF NOT EXISTS "pgcrypto";

COMMIT;
