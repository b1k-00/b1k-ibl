INSERT INTO team (team_id, team_name) VALUES
(1, 'Borneo Hornbills'),
(2, 'Kuala Lumpur Dragons');

INSERT INTO player (player_id, team_id, player_name, number, position) VALUES
(1, 1, 'John Doe', 23, 'Guard');

INSERT INTO game (game_id, home_team_id, away_team_id, game_date) VALUES
(1, 1, 2, '2024-10-01');

INSERT INTO stat (stat_id, player_id, game_id, points, rebounds, assists, blocks, steals, turnovers, minutes) VALUES
(1, 1, 1, 25, 5, 7, 2, 3, 2, 35);

