select b.continent, floor(avg(c.population)) from city c join country b on c.countrycode=b.code
group by b.continent;
