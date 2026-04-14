
INSERT INTO genre (name) VALUES
    ('Rock'),
    ('Pop'),
    ('Jazz'),
    ('Electronic');

INSERT INTO artist (name) VALUES
    ('The Beatles'),
    ('Queen'),
    ('Miles Davis'),
    ('Daft Punk'),
    ('Michael Jackson');

INSERT INTO artist_genre (artist_id, genre_id) VALUES
    (1, 1),  -- The Beatles - Rock
    (1, 2),  -- The Beatles - Pop
    (2, 1),  -- Queen - Rock
    (2, 2),  -- Queen - Pop
    (3, 3),  -- Miles Davis - Jazz
    (4, 4),  -- Daft Punk - Electronic
    (4, 1),  -- Daft Punk - Rock
    (5, 2);  -- Michael Jackson - Pop

INSERT INTO album (title, year) VALUES
    ('Abbey Road', 1969),
    ('A Night at the Opera', 1975),
    ('Kind of Blue', 1959),
    ('Random Access Memories', 2013),
    ('Thriller', 1982);

INSERT INTO artist_album (artist_id, album_id) VALUES
    (1, 1),  -- The Beatles - Abbey Road
    (2, 2),  -- Queen - A Night at the Opera
    (3, 3),  -- Miles Davis - Kind of Blue
    (4, 4),  -- Daft Punk - Random Access Memories
    (1, 4),  -- The Beatles - Random Access Memories (коллаборация)
    (5, 5);  -- Michael Jackson - Thriller

INSERT INTO track (title, duration, album_id) VALUES
    ('Come Together', 259, 1),
    ('Something', 182, 1),
    ('Bohemian Rhapsody', 354, 2),
    ('So What', 562, 3),
    ('Get Lucky', 248, 4),
    ('Billie Jean', 294, 5),
    ('Here Comes the Sun', 185, 1),
    ('We Will Rock You', 122, 2);

INSERT INTO compilation (title, year) VALUES
    ('Greatest Hits of the 70s', 2020),
    ('Rock Classics', 2021),
    ('Jazz Essentials', 2019),
    ('Dance Party Mix', 2022),
    ('Best of All Time', 2023);

INSERT INTO compilation_track (compilation_id, track_id) VALUES
    (1, 1),  -- Greatest Hits of the 70s - Come Together
    (1, 2),  -- Greatest Hits of the 70s - Something
    (1, 3),  -- Greatest Hits of the 70s - Bohemian Rhapsody
    (2, 1),  -- Rock Classics - Come Together
    (2, 3),  -- Rock Classics - Bohemian Rhapsody
    (2, 8),  -- Rock Classics - We Will Rock You
    (3, 4),  -- Jazz Essentials - So What
    (4, 5),  -- Dance Party Mix - Get Lucky
    (4, 6),  -- Dance Party Mix - Billie Jean
    (5, 1),  -- Best of All Time - Come Together
    (5, 3),  -- Best of All Time - Bohemian Rhapsody
    (5, 6);  -- Best of All Time - Billie Jean
    
