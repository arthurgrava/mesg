CREATE TABLE user (
    user_id uuid PRIMARY KEY,
    name text,
    created_at timestamp,
    updated_at timestamp
);

CREATE TABLE message (
    sender uuid,
    target uuid,
    message_time timestamp,
    content text,
    PRIMARY KEY ((sender, target), message_time)
) WITH CLUSTERING ORDER BY (message_time DESC);
