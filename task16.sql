select track.name, track.UnitPrice, genre.Name as genrename 
from invoiceline 
   inner join track on invoiceLine.trackId = track.trackId 
   inner join genre on track.GenreId=genre.GenreId 
where invoiceLine.InvoiceId in (410, 404, 299);