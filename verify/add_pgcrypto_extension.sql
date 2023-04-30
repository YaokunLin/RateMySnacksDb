-- Verify rate-my-snacks-db:add_pgcrypto_extension on pg

BEGIN;

SELECT true
FROM pg_extension
WHERE extname = 'pgcrypto';

ROLLBACK;
