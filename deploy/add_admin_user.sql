-- Deploy rate-my-snacks-db:add_admin_user to pg
-- requires: users_table

BEGIN;

INSERT INTO rms_schema.users (email, name, provider_id, role_id)
VALUES ('lin.yaokun1@gmail.com', 'Yaokun Lin', 1, 1);

COMMIT;
