CREATE TABLE word (
    id INTEGER,
    letters TEXT,
    score INTEGER,
    is_word Boolean);

ALTER TABLE ONLY word
     ADD CONSTRAINT word_pkey PRIMARY KEY (id);
