select max(months*salary),count(*)from employee where months*salary=  (select max(months*salary )as earnings from employee);
