/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


/* Enter your sql queries here */
CREATE TABLE class(
    id VARCHAR(3),
    name CHAR(10)
);

INSERT INTO class VALUES
('a0','John'),
('a1','Dali');

SELECT * FROM class;

SET autocommit=0;

START TRANSACTION;

INSERT INTO class VALUES
('a2','kiran');

SELECT * FROM class;

SAVEPOINT class1;

INSERT INTO class VALUES
('a3','Sharon');

SELECT * FROM class;

SAVEPOINT class2;

ROLLBACK TO class1;

SELECT * FROM class;

COMMIT;