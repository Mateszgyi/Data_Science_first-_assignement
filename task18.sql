select artist.name as ArtistName, album.Title as AlbumTitle, track.name as TrackName, Genre.Name as GenreName, MediaType.Name as MediaTypeName, track.UnitPrice
from track inner join Album on album.AlbumId = track.albumId
   inner join Genre on genre.GenreId = track.genreId
   inner join MediaType on MediaType.MediaTypeId = track.MediaTypeId
   inner join Artist on artist.artistId = Album.ArtistId 
where album.Title in ('Frank', 'Revelations') and track.trackId not in (select trackid from invoiceLine)
order by ArtistName desc;