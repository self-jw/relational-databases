/* Add a file */
INSERT INTO drive_file VALUES (11, 'movies', 110, 'spreadsheet', 'mc', '2017-05-19');
SELECT * 
    FROM drive_file;

/* Change the file name and modify the date to current */
UPDATE drive_file 
    SET name = 'resume_2p1' 
    WHERE id = 3;

UPDATE drive_file 
    SET last_modified = '2017-05-19' 
    WHERE id = 3;

SELECT * 
    FROM drive_file 
    ORDER BY id ASC;

/* Delete the added file */
DELETE 
    FROM drive_file 
    WHERE name = 'movies';

SELECT * 
    FROM drive_file 
    ORDER BY id ASC;

/* Display files where size is greater than 50 */
SELECT * 
    FROM drive_file 
    WHERE size > 50;

/* List 5 files only */
SELECT * 
    FROM drive_file 
    LIMIT 5;

/* Display files in decending size order */
SELECT * 
    FROM drive_file 
    ORDER BY size DESC;

/* Display the resume folder and files */
SELECT folder.name AS folder, 
    drive_file.name AS file 
    FROM folder 
    INNER JOIN drive_file 
    ON folder.file_id = drive_file.id 
    WHERE folder.name = 'resume';
