CREATE TABLE "user" (
  user_id       SERIAL PRIMARY KEY          NOT NULL,
  name          VARCHAR(32)                 NOT NULL,
  password_hash VARCHAR                     NOT NULL,
  status        INT,
  created_at    TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
  updated_at    TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NULL,
  UNIQUE (name)
);