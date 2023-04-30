-- Revert rate-my-snacks-db:auth_providers_table from pg

BEGIN;

DROP TABLE rms_schema.auth_providers;

COMMIT;
