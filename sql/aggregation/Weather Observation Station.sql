/* Weather Observation Station 2 */
select round(sum(lat_n),2) ,round(sum(long_w),2) from station;

/* Weather Observation Station 13 */
select trunc(sum(lat_n),4) from station where lat_n>38.7880 and lat_n<137.2345;

/* Weather Observation Station 14 */
select trunc(max(LAT_N),4) from station where lat_n < 137.2345;

/* Weather Observation Station 15 */
Select ROUND(LONG_W,4) from STATION WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N<137.2345);

/* Weather Observation Station 16 */
select round(min(lat_n),4) from station where lat_n>38.7780;

/* Weather Observation Station 17 */
select round(long_w,4) from station where lat_n=(select min(lat_n) from station where lat_n>38.7780);

/* Weather Observation Station 18 */
select round((c-a)+(d-b),4) from(select min(lat_n) as a , min(long_w) as b ,max(lat_n) as c, max(long_w) as d from station);

/* Weather Observation Station 19 */
select round(sqrt(power((b-a),2)+power((d-c),2)),4) from(select min(lat_n) as a , min(long_w) as c ,max(lat_n) as b, max(long_w) as d from station);

/* Weather Observation Station 20 */
Select round(S.LAT_N,4) from station S where(select count(Lat_N) from station where Lat_N < S.LAT_N)=(select count(Lat_N) from station where Lat_N > S.LAT_N);
