-- Revert rate-my-snacks-db:insert_snack_func from pg

BEGIN;

DROP FUNCTION rms_schema.insert_snack(VARCHAR(255), TEXT, VARCHAR(255), VARCHAR(100), UUID);

COMMIT;
