/*  Create a new table called persons
twith columns: id, person_name, birth _ date, and phone */

CREATE TABLE persons(
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(10) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)

)