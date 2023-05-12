-- Revert rate-my-snacks-db:insert_user_func from pg

BEGIN;

DROP FUNCTION IF EXISTS rms_schema.insert_user(TEXT, TEXT, TEXT, INT, INT);

COMMIT;
