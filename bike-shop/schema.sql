CREATE TABLE bikes (
    id SERIAL,
    name VARCHAR,
    price DECIMAL DEFAULT 0.00,
    frame_id INTEGER DEFAULT null,
    rings_front INTEGER DEFAULT 3,
    rings_back INTEGER DEFAULT 7,
    brakes_front BOOLEAN DEFAULT true,
    brakes_back BOOLEAN DEFAULT true);

CREATE TABLE frames (
    id SERIAL,
    color VARCHAR DEFAULT 'black',
    size INTEGER DEFAULT 55,
    style VARCHAR DEFAULT 'street');

CREATE TABLE tires (
    id SERIAL,
    diameter INTEGER DEFAULT 22,
    type VARCHAR DEFAULT 'street');

CREATE TABLE bike_frame (
    id SERIAL,
    bike_id INTEGER DEFAULT null,
    frame_id INTEGER DEFAULT null);

CREATE TABLE bike_tires (
    id SERIAL,
    bike_id INTEGER DEFAULT null,
    front_tire_id INTEGER DEFAULT null,
    back_tire_id INTEGER DEFAULT null);

ALTER TABLE ONLY bikes
    ADD CONSTRAINT bikes_pkey PRIMARY KEY (id);

ALTER TABLE ONLY frames
    ADD CONSTRAINT frames_pkey PRIMARY KEY (id);

ALTER TABLE ONLY tires 
    ADD CONSTRAINT tires_pkey PRIMARY KEY (id);

ALTER TABLE ONLY bike_frame
    ADD CONSTRAINT bike_frame_pkey PRIMARY KEY (id);

ALTER TABLE ONLY bike_tires
    ADD CONSTRAINT bike_tires_pkey PRIMARY KEY (id);

ALTER TABLE ONLY bikes 
    ADD CONSTRAINT frame_id_fkey FOREIGN KEY (frame_id) REFERENCES frames(id);

ALTER TABLE ONLY bike_frame
    ADD CONSTRAINT bike_id_fkey FOREIGN KEY (bike_id) REFERENCES bikes(id);

ALTER TABLE ONLY bike_frame
    ADD CONSTRAINT frame_id_fkey FOREIGN KEY (frame_id) REFERENCES frames(id);

ALTER TABLE ONLY bike_tires
    ADD CONSTRAINT bike_id_fkey FOREIGN KEY (bike_id) REFERENCES bikes(id);

ALTER TABLE ONLY bike_tires
    ADD CONSTRAINT front_tire_id_fkey FOREIGN KEY (front_tire_id) REFERENCES tires(id);

ALTER TABLE ONLY bike_tires
     ADD CONSTRAINT back_tire_id_fkey FOREIGN KEY (back_tire_id) REFERENCES tires(id);

