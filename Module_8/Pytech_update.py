\sql
\connect root@localhost:3306
use pysports

CREATE TABLE Player(
player_id VARCHAR(50) NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(60) NOT NULL,
primary key(player_id));

CREATE TABLE Team(
team_id VARCHAR(50) NOT NULL,
team_name VARCHAR(30) NOT NULL,
mascot VARCHAR(60) NOT NULL,
primary key(team_id));

INSERT INTO team(team_id, team_name, mascot)
VALUES ('001', 'Team Gandalf', 'Grey Wizards');

INSERT INTO team(team_id, team_name, mascot)
VALUES ('002', 'Team Sauron', 'Orcs');

INSERT INTO player(player_id, first_name, last_name)
VALUES ('001', 'Thorin', 'Oakenshield');

INSERT INTO player(player_id, first_name, last_name)
VALUES ('002', 'Biblo', 'Baggins');

INSERT INTO player(player_id, first_name, last_name)
VALUES ('003', 'Frodo', 'Baggins');

INSERT INTO player(player_id, first_name, last_name)
VALUES ('004', 'Saruman', 'White');

INSERT INTO player(player_id, first_name, last_name)
VALUES ('005', 'Angmar', 'Witch-King');

INSERT INTO player(player_id, first_name, last_name)
VALUES ('006', 'Azog', 'The Defiler');
