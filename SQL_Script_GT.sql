/*Script for aggregated data*/

select b.grill_type, b.pre_heat_time, b.fuel_cost_per_meal, b.market_share, b.easiness_to_use, b.life_span_year, b.initial_investment, avg(a.user_satisfaction) as user_satisfaction,
avg(a.fuel_cost) as avg_fuel_cost, case when b.grill_type = 'Charcoal' then b.initial_investment + 38*b.fuel_cost_per_meal when b.grill_type = 'Propane' then b.initial_investment + 40*b.fuel_cost_per_meal End as Total_cost_for_3_years
from [Lodestone].[dbo].[SheetB] a
join [Lodestone].[dbo].[SheetA] b
on a.grill_type = b.grill_type
group by  b.grill_type, b.grill_type, b.pre_heat_time, b.fuel_cost_per_meal, b.market_share, b.easiness_to_use, b.life_span_year, b.initial_investment


