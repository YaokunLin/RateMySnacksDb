-- Deploy rate-my-snacks-db:uuid_extension to pg
-- requires: appschema

BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

COMMIT;
