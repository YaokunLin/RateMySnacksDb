-- Verify rate-my-snacks-db:insert_user_func on pg

BEGIN;

SELECT CASE
    WHEN EXISTS (
        SELECT FROM information_schema.routines
        WHERE routine_schema = 'rms_schema'
        AND routine_name = 'insert_user'
    ) THEN 1
    ELSE 0
END;

COMMIT;
