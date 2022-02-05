SELECT a.au_id AS 'AUTHORD ID', a.au_lname as 'LAST NAME', a.au_fname AS 'FIRST NAME', p.pub_name as 'PUBLISHER', COUNT(p.pub_name) AS 'TITLES COUNT' 
from publishers p 
inner join titles t on t.pub_id =p.pub_id
inner join titleauthor t2 on t2.title_id =t.title_id 
inner join authors a on a.au_id =t2.au_id 
group by a.au_id
order by 'AUTHOR ID' DESC