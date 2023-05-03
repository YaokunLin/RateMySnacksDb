-- Verify rate-my-snacks-db:populate_roles_table on pg

BEGIN;

SELECT COUNT(*) FROM rms_schema.roles WHERE
    name IN ('Admin', 'Snack Manager', 'Reviewer', 'User', 'Guest');

ROLLBACK;
