CREATE TABLE drive_file (
    id INTEGER,
    name TEXT,
    size INTEGER,
    type TEXT,
    owner TEXT,
    last_modified DATE);

CREATE TABLE folder (
    id INTEGER,
    name TEXT,
    owner TEXT,
    last_modified DATE,
    file_id INTEGER);

ALTER TABLE ONLY drive_file
     ADD CONSTRAINT drive_file_pkey PRIMARY KEY (id);

ALTER TABLE ONLY folder
     ADD CONSTRAINT folder_pkey PRIMARY KEY (id);

ALTER TABLE ONLY folder
     ADD CONSTRAINT file_id_fkey FOREIGN KEY (file_id) REFERENCES drive_file(id);
