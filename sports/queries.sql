SELECT * 
    FROM team;

/* Add a team */
INSERT INTO team VALUES (6, 'Celtics', 'NBA');

SELECT * 
    FROM team;

/* Change the team name */
UPDATE team 
    SET name = 'Boston Celtics' 
    WHERE id = 6;

SELECT * 
    FROM team;

/* Delete the added team */
DELETE 
    FROM team 
    WHERE name = 'Boston Celtics';
    
SELECT * 
    FROM team;

/* Display NFL teams */
SELECT * 
    FROM team 
    WHERE league = 'NFL';

/* List 3 teams only */
SELECT * 
    FROM team LIMIT 3;

/* Display teams in ascending league order */
SELECT * 
    FROM team 
    ORDER BY league ASC;

/* Display the NBA team game times */
SELECT team.name AS team, 
    game.day, game.time 
    FROM game 
    INNER JOIN team 
    ON game.team_id = team.id 
    WHERE team.league = 'NBA';

