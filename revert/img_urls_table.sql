-- Revert rate-my-snacks-db:img_urls_table from pg

BEGIN;

DROP TABLE rms_schema.snack_images;

COMMIT;
