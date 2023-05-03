-- Verify rate-my-snacks-db:users_table on pg

BEGIN;

SELECT * FROM rms_schema.users;

ROLLBACK;
