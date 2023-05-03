-- Revert rate-my-snacks-db:users_table from pg

BEGIN;

DROP TABLE rms_schema.users;

COMMIT;
