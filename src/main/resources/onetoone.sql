


CREATE TABLE persons(
	id 				INTEGER PRIMARY KEY,
	name_surname 	VARCHAR(26),
	fin				INTEGER NOT NUll UNIQUE
);

CREATE TABLE user_profile(
	id 					INTEGER PRIMARY KEY,
	person_fin			INTEGER REFERENCES persons(fin),
	user_information	VARCHAR(256)
);