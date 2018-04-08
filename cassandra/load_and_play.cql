BEGIN BATCH
    INSERT INTO user (user_id, name, created_at, updated_at) VALUES (c52e0a21-4560-4feb-8609-8f92a2fa2461, 'Arthur', 1522791602000, 1522791602000);
    INSERT INTO user (user_id, name, created_at, updated_at) VALUES (5aabc196-9b7e-47f2-bd2d-826f904582af, 'Samira', 1522791602000, 1522791602000);
APPLY BATCH;

BEGIN BATCH
    INSERT INTO message (sender, target, content, message_time) VALUES (c52e0a21-4560-4feb-8609-8f92a2fa2461, 5aabc196-9b7e-47f2-bd2d-826f904582af, 'Hello!', 1522791612000);
    INSERT INTO message (sender, target, content, message_time) VALUES (c52e0a21-4560-4feb-8609-8f92a2fa2461, 5aabc196-9b7e-47f2-bd2d-826f904582af, 'How are you?', 1522791622000);
    INSERT INTO message (sender, target, content, message_time) VALUES (5aabc196-9b7e-47f2-bd2d-826f904582af, c52e0a21-4560-4feb-8609-8f92a2fa2461, 'Hi!!!', 1522791642000);
    INSERT INTO message (sender, target, content, message_time) VALUES (5aabc196-9b7e-47f2-bd2d-826f904582af, c52e0a21-4560-4feb-8609-8f92a2fa2461, 'Perfect, and you?', 1522791682000);
    INSERT INTO message (sender, target, content, message_time) VALUES (5aabc196-9b7e-47f2-bd2d-826f904582af, c52e0a21-4560-4feb-8609-8f92a2fa2461, 'Are you there?', 1522991682000);
APPLY BATCH;

SELECT
    *
FROM message
WHERE
    sender in (5aabc196-9b7e-47f2-bd2d-826f904582af, c52e0a21-4560-4feb-8609-8f92a2fa2461)
    AND target in (5aabc196-9b7e-47f2-bd2d-826f904582af, c52e0a21-4560-4feb-8609-8f92a2fa2461);

SELECT
    *
FROM message
WHERE
    sender in (5aabc196-9b7e-47f2-bd2d-826f904582af, c52e0a21-4560-4feb-8609-8f92a2fa2461)
    AND target in (5aabc196-9b7e-47f2-bd2d-826f904582af, c52e0a21-4560-4feb-8609-8f92a2fa2461)
    AND message_time > '2018-04-03 21:40:30+0000';