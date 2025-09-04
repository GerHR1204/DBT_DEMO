{% macro get_seasons(x) %}

CASE WHEN MONTH(TO_TIMESTAMP({{x}})) IN (12,1,2)
   THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (3,4,5)  
   THEN 'SPRING' 
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (6,7,8)
   THEN 'SUMMER'
    ELSE 'AUTUM'
END

{% endmacro %}

{% macro get_day_type(x) %}
CASE when DAYNAME(TO_TIMESTAMP({{x}})) in ('Sat','Sun')
  then 'WEEKEND'
else 'BUSINESSDAY'
end 

{% endmacro %}