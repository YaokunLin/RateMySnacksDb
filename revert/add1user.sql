-- Revert rate-my-snacks-db:add1user from pg

BEGIN;

DELETE FROM rms_schema.users
WHERE email = 'lin.yaokun1@gmail.com' AND name = 'Yaokun Lin' AND provider_id = 1 AND role_id = 1;

COMMIT;
