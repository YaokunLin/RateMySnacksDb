-- Deploy rate-my-snacks-db:snacks_table to pg
-- requires: users_table

BEGIN;

CREATE TABLE rms_schema.snacks (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  s_name VARCHAR(255) NOT NULL,
  describ TEXT,
  country VARCHAR(100),
  rating FLOAT DEFAULT 0,
  total_ratings INT DEFAULT 0,
  submitted_by UUID REFERENCES rms_schema.users(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMIT;
