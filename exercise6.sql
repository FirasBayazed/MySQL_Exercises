use employees;
select * from salaries;
-- select date_format("2017-06-15","%M %d %Y");
select from_date as original, date_format(from_date, "%M %d %Y") version1,
date_format(from_date,"%M %d, %Y") version2, /*we do't need to use as,we can omit as,so just write version2 instead of as version2*/
date_format(from_date, "%m %D, %Y") version3,
date_format(from_date,"%d-%m-%y") as short_version,
date_format(from_date,"%d.%m.%Y") as German_version
 from salaries;