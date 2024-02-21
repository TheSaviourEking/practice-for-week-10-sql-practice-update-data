.read seed - data.sql 

-- Step 1: Update last name 
UPDATE
    friends
SET
    last_name = 'Blue'
WHERE
    first_name = 'Amy'
    AND last_name = 'Pond';

-- Step 2: Silent failure 
-- UPDATE
--     friends
-- SET
--     last_name = 'smith'
-- WHERE
--     first_name = 'Tyler'
--     AND last_name = 'Rose';
-- Step 2 FIX
UPDATE
    friends
SET
    last_name = 'Smith'
WHERE
    first_name = 'Rose'
    AND last_name = 'Tyler';

-- Trigger an UPDATE error
-- UPDATE
--     friends
-- SET
--     last_name = NULL
-- WHERE
--     id = 5;
-- what error do you see ?
-- Error: near line 28: stepping, NOT NULL constraint failed: friends.last_name (19)
-- why does this error happen ?
-- it happens because in the db schema we did set a constraint that last_name cannot be NULL;
-- Resolve the error
-- i'll set the last_name to an empty string instead, this adheres to the constraint
-- that last_name cannot be null and also removes the last_name from the friends table
UPDATE
    friends
SET
    last_name = ''
WHERE
    id = 5;

-- Verify table
SELECT
    *
FROM
    friends;
