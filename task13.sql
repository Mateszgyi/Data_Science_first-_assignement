select customer.FirstName, customer.lastName, szum.osszesen from customer inner join (select invoice.customerId,Sum(invoice.total) as osszesen from invoice Group by invoice.customerId) as szum
 on customer.customerId = szum.customerid 
order by osszesen desc limit 1;