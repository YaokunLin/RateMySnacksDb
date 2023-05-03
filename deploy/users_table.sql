-- Deploy rate-my-snacks-db:users_table to pg
-- requires: appschema
-- requires: roles_table
-- requires: auth_providers_table

BEGIN;

CREATE TABLE rms_schema.users (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  email TEXT UNIQUE NOT NULL,
  name TEXT,
  img_url TEXT,
  provider_id INT REFERENCES rms_schema.auth_providers(id),
  role_id INT REFERENCES rms_schema.roles(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMIT;
