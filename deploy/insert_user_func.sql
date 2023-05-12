-- Deploy rate-my-snacks-db:insert_user_func to pg
-- requires: users_table

BEGIN;

CREATE OR REPLACE FUNCTION rms_schema.insert_user(
    p_email TEXT,
    p_name TEXT,
    p_img_url TEXT,
    p_provider_id INT,
    p_role_id INT
) RETURNS UUID LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
    new_user_id UUID;
BEGIN
    INSERT INTO rms_schema.users (email, name, img_url, provider_id, role_id)
    VALUES (p_email, p_name, p_img_url, p_provider_id, p_role_id)
    RETURNING id INTO new_user_id;
    
    RETURN new_user_id;
END;
$$;

COMMIT;
