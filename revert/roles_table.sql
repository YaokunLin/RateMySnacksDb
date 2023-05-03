-- Revert rate-my-snacks-db:roles_table from pg

BEGIN;

DROP TABLE rms_schema.roles;

COMMIT;
