/* From Khan Academy project: App impersonator 
File:    app_impersonator.sql 
*/

CREATE TABLE to_do (
	id INTEGER PRIMARY KEY,
	content TEXT,
	date TEXT);
	
	INSERT INTO to_do VALUES (1, "Detergent", "05/07/2017");
	INSERT INTO to_do VALUES (2, "Car Insurance", "05/08/2017");
	INSERT INTO to_do VALUES (3, "Laundry", "05/08/2017");
	
	SELECT * FROM to_do;
	
	UPDATE to_do SET date = "05/15/2017" WHERE id = 2;
	
	SELECT * FROM to_do;
	
	DELETE FROM to_do WHERE content = "Laundry";
	
	SELECT * FROM to_do;
