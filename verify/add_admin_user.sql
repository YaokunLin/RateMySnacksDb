-- Verify rate-my-snacks-db:add_admin_user on pg

BEGIN;

DO $$
DECLARE
  user_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO user_count
  FROM rms_schema.users
  WHERE email = 'lin.yaokun1@gmail.com' AND name = 'Yaokun Lin' AND provider_id = 1 AND role_id = 1;

  IF user_count != 1 THEN
    RAISE EXCEPTION 'User not inserted: %, %, %, %', 'lin.yaokun1@gmail.com', 'Yaokun Lin', 1, 1;
  END IF;
END $$;

COMMIT;
