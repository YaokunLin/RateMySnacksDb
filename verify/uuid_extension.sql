-- Verify rate-my-snacks-db:uuid_extension on pg

BEGIN;

SELECT true
FROM pg_extension
WHERE extname = 'uuid-ossp';

ROLLBACK;
