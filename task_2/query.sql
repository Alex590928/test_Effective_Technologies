# test_Effective_Technologies
select distinct author_name from authors
inner join (select authors.author_id, count(distinct book_id) as n_books from authors
inner join items on items.author_id= authors. author_id
group by authors.author_id
having count(distinct book_id) <= 6) as n_b on authors. author_id = n_b. author_id