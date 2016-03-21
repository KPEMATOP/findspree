CREATE TYPE pub_service AS ENUM ('vk', 'fb', 'gplus', 'tw');
CREATE TABLE user_social (
  user_social_id SERIAL                                    NOT NULL,
  user_id        INTEGER REFERENCES "user"                 NOT NULL,
  service_id pub_service                               NOT NULL,
  created_at     TIMESTAMP WITHOUT TIME ZONE               NOT NULL
);

CREATE INDEX user_social_service_id ON user_social (service_id);
