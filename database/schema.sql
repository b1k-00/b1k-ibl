CREATE TABLE team (
    team_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_name TEXT NOT NULL
    );

CREATE TABLE player (
    player_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER NOT NULL,
    player_name TEXT NOT NULL,
    number INTEGER NOT NULL,
    position TEXT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES team(team_id)
    );

CREATE TABLE game (
    game_id INTEGER PRIMARY KEY AUTOINCREMENT,
    home_team_id INTEGER NOT NULL,
    away_team_id INTEGER NOT NULL,
    game_date TEXT NOT NULL,
    FOREIGN KEY (home_team_id) REFERENCES team(team_id),
    FOREIGN KEY (away_team_id) REFERENCES team(team_id)
    );

CREATE TABLE stat (
    stat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    game_id INTEGER NOT NULL,
    points INTEGER NOT NULL,
    rebounds INTEGER NOT NULL,
    assists INTEGER NOT NULL,
    blocks INTEGER NOT NULL,
    steals INTEGER NOT NULL,
    turnovers INTEGER NOT NULL,
    minutes INTEGER NOT NULL,
    FOREIGN KEY (player_id) REFERENCES player(player_id),
    FOREIGN KEY (game_id) REFERENCES game(game_id)
    );
