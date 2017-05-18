/* List all words guessed */
SELECT letters 
    FROM word;

/* Count all correct words guessed */
SELECT COUNT(id) 
    AS correct_words 
    FROM word 
    WHERE is_word = TRUE;

/* Count all incorrect words guessed */
SELECT COUNT(id) 
    AS incorrect_words 
    FROM word 
    WHERE is_word = FALSE;

/* List all words guessed and their scores */
SELECT letters, score 
    FROM word;

/* Get sum of scores for all words guessed */
SELECT SUM(score) 
    AS total_score 
    FROM word;

/* Show 10 most recently guessed words */
SELECT letters
    FROM 
    (
        SELECT * FROM word
        ORDER BY id DESC LIMIT 10
    )
    sub ORDER BY id ASC;
