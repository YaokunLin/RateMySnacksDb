-- Verify rate-my-snacks-db:snacks_table on pg

BEGIN;

SELECT 1 FROM rms_schema.snacks LIMIT 1;

ROLLBACK;
