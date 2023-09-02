--2.1
select track_name, track_duration from track_list 
where track_duration = (select max(track_duration)from track_list);



--2.2
select track_name, track_duration from track_list 
where track_duration >= 210;



--2.3
select collection_name from collection 
where release_year between 2018 and 2020;



--2.4
select artist_name from artist 
where (length(artist_name) - length(replace(artist_name, ' ', '')))=0;



--2.5
select track_name from track_list 
where upper(track_name) like upper('% my %') or upper(track_name) like upper('% мой %');



--3.1
select m.genre_name, COUNT (g.artist_id) from music_genre m
join genre_of_artist g on m.id = g.genre_id
group by m.genre_name;



--3.2
select COUNT (t.id) from track_list t
join album a on t.track_album = a.id 
where a.year_of_release between 2019 and 2020;



--3.3
select round(avg(t.track_duration)), a.album_name from track_list t
join album a on t.track_album = a.id 
group by a.album_name ;



--3.4
select distinct(a.artist_name) from artist a
join album_artists aa on aa.artist_id = a.id 
join album al on al.id = aa.album_id
where al.year_of_release != 2020;



--3.5
select distinct(c.collection_name) from collection c
join song_collection sc on sc.collection_id  = c.id 
join track_list tl on tl.id = sc.collection_track 
join album_artists aa on aa.album_id = tl.track_album
join artist on artist.id = aa.artist_id 
where artist.artist_name = 'Deftones';


--task4
--4.1
select a.album_name, count(goa.artist_id) from album a 
join album_artists aa on aa.album_id =a.id 
join artist ar on ar.id = aa.artist_id 
join genre_of_artist goa on goa.artist_id = ar.id 
group by a.album_name
having count(goa.artist_id) > 1; 



--4.2
select tl.track_name from track_list tl
left join song_collection sc on sc.collection_track = tl.id 
where sc.collection_id is null;


--4.3
select a.artist_name, tl.track_duration  from artist a
join album_artists aa on a.id=aa.artist_id 
join track_list tl on aa.album_id = tl.track_album 
where tl.track_duration in(select min(track_duration) from track_list);


--4.4
select distinct a.album_name from album a
join track_list tl on tl.track_album = a.id 
where tl.track_album in (
   select track_album 
   from track_list 
   group by track_album 
   having count(id) = (
     select count(id)
     from track_list
     group by track_album
     order by count
     limit 1)
);


 