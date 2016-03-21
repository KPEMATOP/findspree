CREATE TABLE "user_email" (
  user_email_id SERIAL PRIMARY KEY                        NOT NULL,
  user_id       INTEGER REFERENCES "user"                 NOT NULL,
  email         VARCHAR                                   NOT NULL,
  is_primary    BOOLEAN DEFAULT FALSE                     NOT NULL,
  created_at    TIMESTAMP WITHOUT TIME ZONE               NOT NULL DEFAULT NOW(),
  UNIQUE (email)
);
CREATE INDEX user_email_is_primary_idx ON user_email (is_primary);