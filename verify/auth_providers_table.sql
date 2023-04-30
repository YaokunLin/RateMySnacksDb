-- Verify rate-my-snacks-db:auth_providers_table on pg

BEGIN;

SELECT count(*) FROM rms_schema.auth_providers;

ROLLBACK;
