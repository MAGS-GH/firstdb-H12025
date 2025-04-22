-- @block indsætter en nu random_users
INSERT INTO bilbasen_user (name, email, phone, created_at)
VALUES ('Mathias', 'mathias@example.dk', '+4512341234', '2025-04-22');


-- @block viser alle brugerne
SELECT * FROM bilbasen_user;

-- @block indsætter en bil med Mathias som ejer (owner_id)
INSERT INTO bilbasen_bil (name, owner_id)
VALUES ('Ford Mustang', 1);

-- @block viser alle bilene
SELECT * FROM bilbasen_bil;

-- @block viser alle brugerne
SELECT * FROM bilbasen_user;

-- @block viser alle bilene med ejeren
SELECT bilbasen_bil.name as bil_name, bilbasen_user.name as user_name FROM bilbasen_bil
JOIN bilbasen_user ON bilbasen_bil.owner_id = bilbasen_user.id;