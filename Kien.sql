CREATE TABLE ARTIST (
    artistName VARCHAR(255) PRIMARY KEY,
    nationality VARCHAR(100)
);

CREATE TABLE LABEL (
    labelName VARCHAR(255) PRIMARY KEY,
    revenue DECIMAL(15, 2)
);

CREATE TABLE SONG (
    songTitle VARCHAR(255) PRIMARY KEY,
    length INT,
    writtenBy VARCHAR(255),
    writtenYear INT,
    FOREIGN KEY (writtenBy) REFERENCES ARTIST(artistName) ON DELETE CASCADE
);

CREATE TABLE ALBUM (
    albumTitle VARCHAR(255) PRIMARY KEY,
    releaseYear INT,
    producedBy VARCHAR(255),
    playedBy VARCHAR(255),
    FOREIGN KEY (producedBy) REFERENCES LABEL(labelName) ON DELETE CASCADE,
    FOREIGN KEY (playedBy) REFERENCES ARTIST(artistName) ON DELETE CASCADE
);

CREATE TABLE SONG_INALBUM (
    albumSong VARCHAR(255),
    album VARCHAR(255),
    trackNumber INT,
    PRIMARY KEY (albumSong, album),
    FOREIGN KEY (albumSong) REFERENCES SONG(songTitle) ON DELETE CASCADE,
    FOREIGN KEY (album) REFERENCES ALBUM(albumTitle) ON DELETE CASCADE
);

-- Insert records into ARTIST table
INSERT INTO ARTIST (artistName, nationality)
VALUES 
    ('David Louis', 'french'),
    ('Baker Switzerland', 'swiss'),
    ('Dave Witmuller', 'swiss');

-- Insert records into LABEL table
INSERT INTO LABEL (labelName, revenue)
VALUES 
    ('Son', 50000000),
    ('ECC', 3000000),
    ('LabelBlue', 150000),
    ('GROW', 10000);

-- Insert records into SONG table
INSERT INTO SONG (songTitle, length, writtenBy, writtenYear)
VALUES 
    ('After Tomorrow', '5:35', 'David Louis', 2008),
    ('I Do', '3:40', 'David Louis', 2008),
    ('Standing', '4:26', 'David Louis', 1995),
    ('Introducing', '6:00', 'Dave Witmuller', 2000);

-- Insert records into ALBUM table
INSERT INTO ALBUM (albumTitle, releaseYear, producedBy, playedBy)
VALUES 
    ('Rain', 2008, 'ECC', 'David Louis'),
    ('Carney de Roy', 1995, 'LabelBlue', 'David Louis'),
    ('WestWest', 2005, 'GROW', 'Baker Switzerland');

-- Insert records into SONG_INALBUM table
INSERT INTO SONG_INALBUM (albumSong, album, trackNumber)
VALUES 
    ('After Tomorrow', 'Rain', 1),
    ('I Do', 'Rain', 9),
    ('Standing', 'Carney de Roy', 1),
    ('Introducing', 'WestWest', 4);

CREATE TABLE REVIEWS (
    magazine VARCHAR(255),
    albumTitle VARCHAR(255),
    releaseYear INT,
    issue INT,
    critic VARCHAR(255) NOT NULL,
    rating ENUM('positive', 'negative', 'neutral') NOT NULL,
    articleText TEXT NOT NULL,
    PRIMARY KEY (magazine, albumTitle),
    FOREIGN KEY (albumTitle) REFERENCES ALBUM(albumTitle) ON DELETE CASCADE
);

SELECT a.albumTitle, SUM(s.length) AS totalLength
FROM ALBUM a
JOIN SONG_INALBUM sa ON a.albumTitle = sa.album
JOIN SONG s ON sa.albumSong = s.songTitle
GROUP BY a.albumTitle;


SELECT artistName
FROM ARTIST
WHERE artistName NOT IN
    (SELECT a.artistName
     FROM ARTIST a, ALBUM m, SONG_INALBUM sa, SONG s
     WHERE a.artistName = m.playedBy
     AND m.albumTitle = sa.album
     AND sa.albumSong = s.songTitle
     AND s.writtenBy != a.artistName);

SELECT artistName
FROM ARTIST a
WHERE NOT EXISTS
    (SELECT *
     FROM LABEL l
     WHERE NOT EXISTS
         (SELECT *
          FROM ALBUM m
          WHERE m.producedBy = l.labelName
          AND m.playedBy = a.artistName));

SELECT writtenYear
FROM SONG
GROUP BY writtenYear 
HAVING sum(length) =
    (SELECT max(ttl)
     FROM (SELECT sum(length) AS ttl
           FROM SONG 
           GROUP BY writtenYear) sLen);
