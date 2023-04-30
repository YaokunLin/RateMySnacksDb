-- Revert rate-my-snacks-db:uuid_extension from pg

BEGIN;

DROP EXTENSION IF EXISTS "uuid-ossp";

COMMIT;
