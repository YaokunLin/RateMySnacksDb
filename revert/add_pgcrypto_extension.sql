-- Revert rate-my-snacks-db:add_pgcrypto_extension from pg

BEGIN;

DROP EXTENSION IF EXISTS "pgcrypto";

COMMIT;
