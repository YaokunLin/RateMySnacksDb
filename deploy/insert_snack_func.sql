-- Deploy rate-my-snacks-db:insert_snack_function to pg
-- requires: snacks_table
-- requires: img_urls_table

BEGIN;

CREATE OR REPLACE FUNCTION rms_schema.insert_snack_and_images(
  s_name VARCHAR(255),
  describ TEXT,
  country VARCHAR(100),
  image_urls VARCHAR[],
  alts TEXT[],
  widths INT[],
  heights INT[],
  orderings INT[],
  submitted_by UUID
) RETURNS UUID AS $$
DECLARE
  new_snack_id UUID;
  default_user_id UUID := (
    SELECT id FROM rms_schema.users WHERE email = 'lin.yaokun1@gmail.com'
  );
BEGIN
  IF submitted_by IS NULL THEN
    submitted_by := default_user_id;
  END IF;

  INSERT INTO rms_schema.snacks (s_name, describ, country, submitted_by)
  VALUES (s_name, describ, country, submitted_by)
  RETURNING id INTO new_snack_id;

  FOR i IN 1..array_length(image_urls, 1) LOOP
    INSERT INTO rms_schema.snack_images (snack_id, img_url, alt, width, height, ordering)
    VALUES (new_snack_id, image_urls[i], alts[i], widths[i], heights[i], orderings[i]);
  END LOOP;

  RETURN new_snack_id;
END;
$$ LANGUAGE plpgsql;

COMMIT;
