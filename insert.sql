insert into artist (artist_name)
values ('Deftones'),
('Massive Attack'),
('Red Hot Chili Peppers'),
('Tame Impala');

insert into music_genre (genre_name)
values ('Trip hop'),
('Electronic'),
('Alternative rock'),
('Experimental rock'),
('Funk metal'),
('Rap rock'), 
('Psychedelic pop'),
('Indie rock');

insert into album (album_name, year_of_release)
values ('White Pony', 2000),
('Mezzanine', 1998),
('By the Way', 2002),
('Currents', 2015),
('Blue lines', 1991),
('Protection', 1994),
('Mother''s Milk', 1989),
('Californication', 1999),
('Diamond Eyes', 2010),
('Deftones', 2003);

insert into album_artists (album_id, artist_id)
values(1,1),
(2,2),
(3,3),
(4,4),
(5,2), 
(6,2),
(7,3),
(8,3),
(9,1),
(10,1);


insert into genre_of_artist (genre_id, artist_id)
values (3,1),
(4,1),
(1,2),
(2,2),
(3,3),
(5,3),
(6,3),
(7,4),
(8,4);


insert into track_list (track_album, track_name, track_duration)
values(1, 'Passenger', 369),
(1, 'Pink Maggit', 453),
(1, 'Elite', 242),
(1, 'Knife Party', 289),
(1, 'Feiticeira', 190),
(1, 'RX Queen', 268),
(1, 'Teenager', 201),
(1, 'The Boy''s Republic',278),
(2, 'Exchange', 251),
(2, 'Inertia Creeps', 357),
(2, 'Black Milk', 382),
(2, 'Angel', 380),
(2, 'Teardrop', 331),
(2, 'Dissolved Girl', 367),
(2, 'Risingson', 299),
(3, 'The Zephyr Song', 233),
(3, 'Minor Thing', 218),
(3, 'This Is the Place', 258),
(3, 'On Mercury', 208),
(3, 'Warm Tape', 257),
(3, 'Venice Queen', 367),
(3, 'Dosed', 312),
(3, 'Midnight', 296),
(3, 'I Could Die for You', 194),
(3, 'Tear', 317),
(3, 'Can''t Stop', 274),
(3, 'Universally Speaking', 254),
(3, 'Throw Away Your Television', 225),
(4, 'Nangs', 97),
(4, 'The Less I Know the Better', 218),
(4, 'The Moment', 255),
(4, 'New Person, Same Old Mistakes', 362),
(4, 'Past Life', 227),
(4, 'Love/Paranoia', 186),
(4, 'Gossip', 55),
(4, 'Yes I''m Changing', 270),
(4, 'Reality in Motion', 252),
(5, 'Save From Harm', 319),
(5,'Unfinished Sympathy', 312),
(5,'Five Man Army', 321),
(6,'Karmacoma', 314),
(6, 'Protection', 465),
(6,'Live with Me', 291),
(7, 'Higher Ground', 202),
(7, 'Taste the Pain', 272),
(7, 'Stone Cold Blush', 186),
(8, 'Around the World', 241),
(8, 'Scar Tissue', 184),
(8, 'Otherside', 258),
(8, 'Road Trippin', 203), 
(9,'Diamond Eyes', 188),
(9,'Prince', 217),
(9,'Rocket Skates', 254),
(9,'Risk', 219),
(10, 'Hexagram', 251),
(10, 'Minerva', 258),
(10, 'Moana', 302),
(10,'Bloody Cape', 218);

--999 - идентификатор для альбома, которого не существует--

insert into collection(collection_name, release_year)
values('Collected(Massive attack Album))', 2006),
('The Studio Album Collection', 2016),
('Greatest Hits', 2003),
('Tame Impala Collection', 2019);

insert into song_collection (collection_id, collection_track)
values(1, 38),
(1, 41),
(1, 12),
(1, 13),
(1,10),
(1, 42),
(1, 39),
(1, 15),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55), 
(2, 56),
(2, 57),
(2,58),
(2,1),
(2,2),
(2,3),
(2,4),
(2,5),
(2,6),
(2,7),
(3, 47),
(3,48),
(3,49),
(3,50),
(3,27),
(4,30),
(4,31),
(4,32),
(4,33);

insert into artist (artist_name)
values ('The White Stripes');


insert into genre_of_artist (genre_id, artist_id)
values (3,5);

insert into album(album_name, year_of_release)
values('The White Stripes Greatest Hits', 2020);

insert into album_artists (album_id, artist_id)
values (11,5);

insert into track_list(track_album, track_name, track_duration)
values (11, 'When I hear My Name', 94),
(11, 'Apple Blossom', 133),
(11, 'Seven Nation Army', 231),
(11, 'Jolene', 197),
(11, 'Hello Operator', 156),
(11, 'Death Letter', 269);