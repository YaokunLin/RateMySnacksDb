-- Deploy rate-my-snacks-db:auth_providers_table to pg
-- requires: appschema

BEGIN;

CREATE TABLE rms_schema.auth_providers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO rms_schema.auth_providers (name) VALUES
  ('GitHub'),
  ('Google'),
  ('Facebook'),
  ('Twitter'),
  ('LinkedIn'),
  ('Apple'),
  ('Microsoft');

COMMIT;
