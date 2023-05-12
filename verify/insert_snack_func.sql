-- Verify rate-my-snacks-db:insert_snack_func on pg

BEGIN;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 0 FROM pg_proc p
    JOIN pg_namespace n ON n.oid = p.pronamespace
    WHERE n.nspname = 'rms_schema'
    AND p.proname = 'insert_snack'
  ) THEN
    RAISE EXCEPTION 'Function rms_schema.insert_snack does not exist';
  END IF;
END $$;

COMMIT;
