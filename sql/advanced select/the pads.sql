select name+'('+left(occupation,1)+')' from occupations order by name;
select "There are a total of",count(*) t,lower(occupation)+'s.' from occupations group by occupation order by t, occupation ;
