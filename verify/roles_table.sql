-- Verify rate-my-snacks-db:roles_table on pg

BEGIN;

SELECT * FROM rms_schema.roles;

ROLLBACK;
