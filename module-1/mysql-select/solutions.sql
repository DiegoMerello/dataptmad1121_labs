SELECT authors.au_id AS 'AUTHORD ID', authors.au_lname as 'LAST NAME', authors.au_fname AS 'FIRST NAME', t.title as 'TITLE', p.pub_name as 'PUBLISHER' 
FROM  authors
INNER JOIN titleauthor on authors.au_id = titleauthor.au_id 
INNER JOIN titles as t on t.title_id=titleauthor.title_id
INNER JOIN publishers as p on t.pub_id = p.pub_id

---Challenge 2--
SELECT a.au_id AS 'AUTHORD ID', a.au_lname as 'LAST NAME', a.au_fname AS 'FIRST NAME', p.pub_name as 'PUBLISHER', COUNT(p.pub_name) AS 'TITLES COUNT' 
from publishers p 
inner join titles t on t.pub_id =p.pub_id
inner join titleauthor t2 on t2.title_id =t.title_id 
inner join authors a on a.au_id =t2.au_id 
group by a.au_id
order by 'AUTHOR ID' DESC

---Challenge 3---
SELECT a.au_id AS 'AUTHORD ID', a.au_lname as 'LAST NAME', a.au_fname AS 'FIRST NAME', sum(s.qty) as 'TOTAL'
from authors a 
inner join titleauthor t on t.au_id = a.au_id 
inner join titles t2 on t2.title_id =t.title_id 
inner join sales s on s.title_id =t2.title_id
group by a.au_id
order by total desc
limit 3

---Challenge 4---

SELECT a.au_id AS 'AUTHORD ID', a.au_lname as 'LAST NAME', a.au_fname AS 'FIRST NAME', IFNULL(SUM(s.qty),0) as 'TOTAL'
from authors a 
inner join titleauthor t on t.au_id = a.au_id 
inner join titles t2 on t2.title_id =t.title_id 
inner join sales s on s.title_id =t2.title_id
group by a.au_id
order by total desc