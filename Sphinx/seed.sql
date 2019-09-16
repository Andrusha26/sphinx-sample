use sphinx_indexing;
CREATE TABLE articles(id int NOT NULL AUTO_INCREMENT, title varchar(255) NOT NULL, content TEXT NOT NULL, PRIMARY KEY (id));
INSERT INTO articles (title, content) VALUES ('title 1', 'There is content 1 right here');
INSERT INTO articles (title, content) VALUES ('title 2', 'There is content 2 right here');
INSERT INTO articles (title, content) VALUES ('another one', 'There is another one right here');