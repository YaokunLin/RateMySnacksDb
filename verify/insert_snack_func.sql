-- Verify rate-my-snacks-db:insert_snack_function on pg

BEGIN;

SELECT * FROM pg_catalog.pg_proc WHERE proname = 'insert_snack_and_images' AND pronamespace::regnamespace::text = 'rms_schema';

COMMIT;
