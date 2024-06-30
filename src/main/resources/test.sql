CREATE TABLE authors (

	id				INTEGER	PRIMARY KEY,
	nick_name		VARCHAR(256),
	email			VARCHAR(256),
	crated_at		TIMESTAMP NOT NULL  DEFAULT NOW()

);

CREATE TABLE posts(
	id 				INTEGER PRIMARY KEY,
	title 			VARCHAR(256),
	created_at		TIMESTAMP,
	uptade_at 		TIMESTAMP

);

CREATE TABLE authors_posts(
	id				INTEGER	PRIMARY KEY,
	authors_id		INTEGER REFERENCES authors(id),
	posts_id		INTEGER REFERENCES posts(id)

);


CREATE TABLE subscibers(
	ID 				INTEGER PRIMARY KEY,
	email			VARCHAR(256)


);

ALTER TABLE authors ADD CONSTRAINT uuthors_nick_email UNIQUE(nick_name,email);

ALTER TABLE posts ADD COLUMN image_url VARCHAR(256);

CREATE TABLE tags(
	id 				INTEGER PRIMARY KEY,
	tag 			VARCHAR(256),
	created_at		TIMESTAMP


);

CREATE TABLE posts_tags(
	ID 				INTEGER	PRIMARY KEY ,
	posts_id		INTEGER REFERENCES posts(id),
	tags_id		INTEGER REFERENCES tags(id)


);

CREATE OR REPLACE VIEW  authors_posts_wiew AS
	SELECT
			p.title AS post_title,
			p.created_at AS post_created_at,
	        a.nick_name AS authosrs_nick
FROM posts p INNER JOIN authors a ON a.id = p.id;






