CREATE TABLE team (
    id INTEGER,
    name TEXT,
    league TEXT);

CREATE TABLE game (
    id INTEGER,
    team_id INTEGER,
    day TEXT,
    time TEXT);

ALTER TABLE ONLY team
     ADD CONSTRAINT team_pkey PRIMARY KEY (id);

ALTER TABLE ONLY game
     ADD CONSTRAINT game_pkey PRIMARY KEY (id);

ALTER TABLE ONLY game
     ADD CONSTRAINT team_id_fkey FOREIGN KEY (team_id) REFERENCES team(id);
