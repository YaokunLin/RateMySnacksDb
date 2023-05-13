-- Deploy rate-my-snacks-db:img_urls_table to pg
-- requires: snacks_table

BEGIN;

CREATE TABLE rms_schema.snack_images (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  snack_id UUID REFERENCES rms_schema.snacks(id),
  img_url VARCHAR(255) NOT NULL,
  alt TEXT,
  width INT,
  height INT,
  ordering INT,
  present BOOLEAN DEFAULT TRUE,
  active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMIT;
