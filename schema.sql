CREATE TABLE item (
  id INT SERIAL PRIMARY KEY,
  genre INT REFERENCES genre(id),
  author INT REFERENCES author(id),
  source INT REFERENCES source(id),
  label INT REFERENCES label(id),
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL
);

CREATE TABLE game (
  id INT PRIMARY KEY REFERENCES item(id),
  multiplayer VARCHAR(30) NOT NULL,
  last_played_at DATE NOT NULL
);

CREATE TABLE author (
  id INT PRIMARY KEY REFERENCES item(id),
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL
);

CREATE TABLE  book (
  id INT PRIMARY KEY REFERENCES item(id),
  publisher VARCHAR(40),
  cover_state VARCHAR(30)
);

CREATE TABLE label (
  id INT PRIMARY KEY REFERENCES item(id),
  title VARCHAR(30),
  color VARCHAR(20)
);
