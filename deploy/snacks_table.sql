-- Deploy rate-my-snacks-db:snacks_table to pg
-- requires: users_table

BEGIN;

CREATE OR REPLACE FUNCTION rms_schema.create_snacks_table()
RETURNS VOID AS $$
DECLARE
    admin_user_uuid UUID;
BEGIN
    SELECT id INTO admin_user_uuid FROM rms_schema.users WHERE email = 'lin.yaokun1@gmail.com';

    EXECUTE 'CREATE TABLE rms_schema.snacks (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        name VARCHAR(255) NOT NULL,
        description TEXT,
        image_url VARCHAR(255),
        country VARCHAR(100),
        rating FLOAT DEFAULT 0,
        total_ratings INT DEFAULT 0,
        submitted_by UUID DEFAULT ' || quote_literal(admin_user_uuid) || ' REFERENCES rms_schema.users(id),
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
    )';
END;
$$ LANGUAGE plpgsql;

SELECT rms_schema.create_snacks_table();
DROP FUNCTION rms_schema.create_snacks_table();

COMMIT;
