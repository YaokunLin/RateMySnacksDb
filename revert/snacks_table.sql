-- Revert rate-my-snacks-db:snacks_table from pg

BEGIN;

DROP TABLE rms_schema.snacks;

COMMIT;
