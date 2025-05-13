# Write your MySQL query statement below
update salary 
set sex = replace(replace(replace(sex,"m","temp"),"f","m"),"temp","f");