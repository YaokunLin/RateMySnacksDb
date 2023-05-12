-- Deploy rate-my-snacks-db:insert_snack_func to pg
-- requires: users_table
-- requires: snacks_table

BEGIN;

CREATE OR REPLACE FUNCTION rms_schema.insert_snack(
    name VARCHAR(255),
    description TEXT,
    image_url VARCHAR(255),
    country VARCHAR(100),
    submitted_by UUID DEFAULT NULL
) RETURNS UUID AS $$
DECLARE 
    user_id UUID;
    new_snack_id UUID;
BEGIN
    IF submitted_by IS NULL THEN
        SELECT id INTO user_id FROM rms_schema.users WHERE email = 'lin.yaokun1@gmail.com';
    ELSE
        user_id := submitted_by;
    END IF;
    
    INSERT INTO rms_schema.snacks (
        name,
        description,
        image_url,
        country,
        submitted_by
    ) VALUES (
        name,
        description,
        image_url,
        country,
        user_id
    ) RETURNING id INTO new_snack_id;

    RETURN new_snack_id;
END;
$$ LANGUAGE plpgsql;

COMMIT;
