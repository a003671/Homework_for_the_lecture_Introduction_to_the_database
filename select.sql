-- exercise 2

select name_track, lenght
from track
order by lenght DESC
limit 1

select name_track, lenght
from track
where lenght >= '3:30'
order by lenght desc

select collections_name
from collections
WHERE date(date_) BETWEEN '2022-01-01' AND '2023-12-31'

select name_performers
from performers
where not name_performers like '%% %%'

select name_track
from track
where name_track like '%%my%%' or name_track like '%%мой%%'



-- exercise 3

select genres_name, count(name_performers)
from genres
left join musical_genres on genres_id = performers_id
left join performers on performers_id = genres_id
group by genres_name
order by count(genres_id) desc

select count(name_track)
from albums as a
left join track as t on a.id = t.albums_id
where date(date_) BETWEEN '2004-01-01' AND '2005-12-31'

select a.name_album, AVG(t.lenght)
from albums as a
left join track as t on t.albums_id = a.id
group by a.name_album
order by AVG(t.lenght)

select distinct p.name_performers
from performers as p
left join performers_album as pa on p.id = pa.performers_id
left join albums as a on a.id = pa.albums_id
where not date(a.date_) between '2020-01-01' AND '2020-12-31'
order by p.name_performers

select distinct c.collections_name
from collections as c
left join collections_track as ct on c.id = ct.collections_id
left join track as t on t.id = ct.track_id
left join albums as a on a.id = t.albums_id
left join performers_album as pa on pa.albums_id = a.id
left join performers as p on p.id = pa.performers_id
where p.name_performers like '%%50 Cent%%'
order by c.collections_name