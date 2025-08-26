-- 1. Total Cases & Deaths per Country (Top 10)
select location, sum(new_cases) as total_new_cases, max(total_deaths) as total_dead_persons from `covid_dataset.covid_table`
where continent is not null
group by location
order by total_new_cases desc
limit 10;

-- 2. Global Trend of Daily Cases
select date, sum(new_cases) as global_new_cases, sum(new_deaths) as global_new_deaths
from `covid_dataset.covid_table`
where continent is not null
group by date
order by date;

-- 3. Highest Death Rate Countries (Deaths / Cases %)
select location, round((max(total_deaths) / max(total_cases)) *100,4) as death_rate_percent
from `covid_dataset.covid_table`
where continent is not null and total_cases > 100000
group by location
order by death_rate_percent desc
limit 10;

-- 4. Vaccination Progress by Country
select location, max(people_fully_vaccinated) as fully_vaccinent_people,
max(people_fully_vaccinated_per_hundred) as fully_vaccinated_percent
from `covid_dataset.covid_table`
where continent is not null
group by location
order by fully_vaccinated_percent desc
limit 10;

-- 5. Top 10 Countries by Testing Rate
select location, round(max(total_tests_per_thousand),2) as tests_per_thousand
from `covid_dataset.covid_table`
where continent is not null
group by location
order by tests_per_thousand desc
limit 10;

-- 6. 7-Day Rolling Average of New Cases (for USA)
with rolling as (select date, avg(new_cases) over(order by date rows between 6 preceding and current row) as rolling_avg_cases
from `covid_dataset.covid_table`
where location = "United States"
)

select date, rolling_avg_cases, lag(rolling_avg_cases) over(order by date) as prev_day_avg,
case when rolling_avg_cases > lag(rolling_avg_cases) over(order by date) then "UP"
when rolling_avg_cases < lag(rolling_avg_cases) over(order by date) then "DOWN"
else "STABLE" end as trend
from rolling
order by date;

-- 7. Correlation Between GDP per Capita & Vaccinations
select location, max(gdp_per_capita) as gdp_per_capita, max(people_vaccinated_per_hundred) as fully_vaccinated_percent
from `covid_dataset.covid_table` 
where continent is not null
group by location
order by gdp_per_capita desc;

-- 8. Hospital Beds vs Death Rate
select location, max(hospital_beds_per_thousand) as hospital_beds, 
round(safe_divide(max(total_deaths),max(total_cases))*100,4) as death_rate_percent
from `covid_dataset.covid_table`
where continent is not null and total_cases > 100000
group by location
order by death_rate_percent desc;

-- 9. Top 5 Countries in Each Continent by Cases 
with cte as (select continent, location, max(total_cases) as total_cases,
rank() over(partition by continent order by max(total_cases) desc) as rank_within_continent
from `covid_dataset.covid_table`
where continent is not null
group by continent, location
)

select * from cte where rank_within_continent <=5;

-- 10. Global Vaccination vs Cases Trend
select date, sum(new_cases) as global_new_cases, sum(new_vaccinations) as global_new_vaccinations 
from `covid_dataset.covid_table` 
where continent is not null
group by date
order by date 




























