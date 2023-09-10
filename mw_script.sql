
create table if not exists Music_genre(
id serial primary key,
genre_name varchar(60) not null UNIQUE
);


create table if not exists Artist(
id serial primary key,
artist_name varchar(60));


create table if not exists Genre_of_artist(
id serial primary key,
genre_id integer not null references Music_genre(id),
artist_id integer not null references Artist(id));


create table if not exists Album(
id serial primary key,
album_name varchar(60),
year_of_release integer check (year_of_release>1920));

create table if not exists Album_artists(
id serial primary key,
album_id integer not null references Album(id),
artist_id integer not null references Artist(id));

create table if not exists Track_list(
id serial primary key,
track_album integer not null references Album_artists(id),
track_name varchar(60),
track_duration integer CHECK(track_duration<900),
UNIQUE (track_album, track_name));

create table if not exists Collection(
id serial primary key,
collection_name varchar(60),
release_year integer CHECK(release_year>1920));

create table if not exists Song_collection(
id serial primary key,
collection_id integer not null references Collection(id),
collection_track integer not null references Track_list(id)
);
