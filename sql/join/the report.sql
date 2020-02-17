select 
(case 
 when g.grade<8  then 'NULL'
 else s.name
end ),g.grade,s.marks
from students s,grades g where min_mark<=s.marks and max_mark>=s.marks 
order by g.grade desc,s.name;
