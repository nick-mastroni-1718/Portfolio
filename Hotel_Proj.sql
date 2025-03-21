--Creates table "hotels" and union all data from each year
with hotels as (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

--joins the market_segment and meal_cost tables into the hotels table
select * from hotels
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal