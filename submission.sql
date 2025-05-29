-- Submission

-- 1.
-- Post was made April 2048
-- EmptyStack
-- Shares last name with forum post user
-- Active participant in forum as well

-- First I want to access the forum_posts and find posts from that date
--    \d forum_posts
--    I see columns for id, title, content, date, and author

-- Next I will make a query for all posts
--    SELECT * FROM forum_posts

-- Now that I can see what all the posts look like, I will narrow down
--    SELECT author FROM forum_posts WHERE date BETWEEN '2048-04-01' AND 
--    '2048-05-01' AND content ILIKE '%emptystack%';

-- With the list of 2 authors, I can check the accounts db for more details
--    SELECT first_name, last_name FROM forum_accounts WHERE username LIKE 
--    'steep-mechanic-65' OR username LIKE 'smart-money-44'
--    Brad Steele returned

-- I will check for another account with the last name Steele
--    SELECT first_name, last_name FROM forum_accounts WHERE last_name = 
--    'Steele'
--    Three names came up

-- I will check accounts in emptystack for the same last name
--    SELECT first_name, last_name FROM emptystack_accounts WHERE last_name = 
--    'Steele'
--    Andrew Steele is the only match

-- Next I will get his login information
--    SELECT username, password FROM emptystack_accounts WHERE first_name = 
--    'Andrew' AND last_name = 'Steele';
--    username: triple-cart-38 password: password456

-- I looked for messages related to self-driving taxis to find admin
--    SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%'
--    Returned from your-boss-99

-- Using the keyword taxi, i checked for a message that mentioned it
--    SELECT * FROM emptystack_projects WHERE code = 'TAXI'
--    Returned id

-- Got the password from accounts
--    SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99'

-- Ran node mainframe -stop and it worked!