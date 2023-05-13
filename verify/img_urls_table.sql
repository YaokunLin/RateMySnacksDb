-- Verify rate-my-snacks-db:img_urls_table on pg

BEGIN;

SELECT to_regclass('rms_schema.snack_images');

COMMIT;
