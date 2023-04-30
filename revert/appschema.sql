-- Revert rate-my-snacks-db:appschema from pg

BEGIN;

DROP SCHEMA rms_schema;

COMMIT;
