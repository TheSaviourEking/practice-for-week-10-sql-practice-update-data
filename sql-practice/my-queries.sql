-- Step 1: Update last name 
UPDATE
    friends
SET
    last_name = 'Blue'
WHERE
    first_name = 'Amy'
    AND last_name = 'Pond';

-- Step 2: Silent failure 
UPDATE
    friends
SET
    last_name = 'smith'
WHERE
    first_name = 'Tyler'
    AND last_name = 'Rose';

-- Step 2 FIX
UPDATE
    friends
SET
    last_name = 'Smith'
WHERE
    first_name = 'Rose'
    AND last_name = 'Tyler';

-- Verify table
SELECT
    *
FROM
    friends;
