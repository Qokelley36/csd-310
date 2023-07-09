UPDATE player
SET team_id = '002',
first_name = 'Gollum',
last_name = 'Ring Stealer'
WHERE first_name = 'Smeagol';


DELETE FROM player
WHERE first_name = 'Gollum';



INSERT INTO player(player_id, first_name, last_name, team_id)
VALUES ('021', 'Smeagol', 'Shire Folk', '001');
