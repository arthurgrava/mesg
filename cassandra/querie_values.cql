SELECT *
FROM user
WHERE user_id = c52e0a21-4560-4feb-8609-8f92a2fa2461;

SELECT sender, target, content
FROM message
WHERE
    sender IN (c52e0a21-4560-4feb-8609-8f92a2fa2461, 5aabc196-9b7e-47f2-bd2d-826f904582af);