-- Revert rate-my-snacks-db:populate_roles_table from pg

BEGIN;

DELETE FROM rms_schema.roles;

COMMIT;
