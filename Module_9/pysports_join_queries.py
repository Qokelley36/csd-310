
# I did the coding wrong in the previous assingment, so i had to make some corrections; moreover, ill leave them here.

#delete table 

DROP TABLE Player; 

#corrections

CREATE TABLE Player(
player_id VARCHAR(50) NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(60) NOT NULL,
team_id VARCHAR (50) NOT NULL,
primary key(player_id));

#corrections

INSERT INTO player(player_id, first_name, last_name, team_id)
VALUES ('001', 'Thorin', 'Oakenshield', '001');

INSERT INTO player(player_id, first_name, last_name, team_id)
VALUES ('002', 'Biblo', 'Baggins', '001');

INSERT INTO player(player_id, first_name, last_name, team_id)
VALUES ('003', 'Frodo', 'Baggins', '001');

INSERT INTO player(player_id, first_name, last_name, team_id)
VALUES ('004', 'Saruman', 'White', '002');

INSERT INTO player(player_id, first_name, last_name, team_id)
VALUES ('005', 'Angmar', 'Witch-King', '002');

INSERT INTO player(player_id, first_name, last_name, team_id)
VALUES ('006', 'Azog', 'The Defiler', '002');

#Assignment 9.2

SELECT player_id, first_name, last_name, team_name
FROM player
INNER JOIN team
ON player.team_id = team.team_id;

#second part

SELECT player_id, first_name, last_name, team_name
FROM player
LEFT OUTER JOIN team
ON player.team_id = team.team_id;

#third part

SELECT player_id, first_name, last_name, team_name
FROM player
RIGHT OUTER JOIN team
ON player.team_id = team.team_id;

# fourth part

SELECT first_name, last_name
FROM player
WHERE player_id = 3;


