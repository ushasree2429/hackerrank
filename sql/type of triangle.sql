select  
(case 
when a+b >c and a=b and b=c then "Equilateral"
when a+b >c and a=b or b=c or a=c then " Isosceles"
when a!=b and a!=c and b!=c and a+b>c then "Scalene"
else "Not A Triangle"
end )t
from triangles;
