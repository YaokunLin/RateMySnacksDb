-- Revert rate-my-snacks-db:insert_snack_function from pg

BEGIN;

DROP FUNCTION rms_schema.insert_snack_and_images(VARCHAR(255), TEXT, VARCHAR(100), VARCHAR[], TEXT[], INT[], INT[], INT[], UUID);

COMMIT;
