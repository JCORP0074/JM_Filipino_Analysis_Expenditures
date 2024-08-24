select * from dbo.Fili_salary_CSV;

select distinct Region from dbo.Fili_salary_CSV;
select 
	Yearly_Income,
	(Yearly_Income / 12) as avg_monthly_Income,
	Region,
	Income_source,
	Stale_Yearly_Expense,
	Meat_Expenditures_Yearly,
	Seafood_Expenditures,
	Leisure_Expenditure,
	Alcohol_Expenditures,
	Tobacco_Expenditures,
	Medical_Expendittures,
	Transport_Expenditure,
	Communication_Expenditure,
	Utilities_Expenditure,
	Housing_Tax,
	Total_Expenditures,
	(Total_Expenditures / 365) as Avg_Daily_Expense,
	avg(Total_Expenditures / 365) over(Partition by Region) as Avg_Regional_Daily_Expense,
	Household_Head_Class_of_Worker,
	Household_Type,
	Family_members,
	Case when Region = 'NCR' and (Yearly_Income / 365) > 573 Then 'Above Minimum'
			 when Region = 'NCR' and (Yearly_Income / 365) = 573 Then 'Minimum'
			 when Region = 'NCR' and (Yearly_Income / 365) < 573 Then 'Below Minimum'
			 when Region = 'IX - Zasmboanga Peninsula' and (Yearly_Income / 365) > 368 Then 'Above Minimum'
			 when Region = 'IX - Zasmboanga Peninsula' and (Yearly_Income / 365) = 368 Then 'Minimum'
			 when Region = 'IX - Zasmboanga Peninsula' and (Yearly_Income / 365) < 368 Then 'Below Minimum'
			 when Region = 'II - Cagayan Valley' and (Yearly_Income / 365) > 415 Then 'Above Minimum'
			 when Region = 'II - Cagayan Valley' and (Yearly_Income / 365) = 415 Then 'Minimum'
			 when Region = 'II - Cagayan Valley' and (Yearly_Income / 365) < 415 Then 'Below Minimum'
			 when Region = 'Caraga' and (Yearly_Income / 365) > 370 Then 'Above Minimum'
			 when Region = 'Caraga' and (Yearly_Income / 365) = 370 Then 'Minimum'
			 when Region = 'Caraga' and (Yearly_Income / 365) < 370 Then 'Below Minimum'
			 when Region = 'IVA - CALABARZON' and (Yearly_Income / 365) > 385 Then 'Above Minimum'
			 when Region = 'IVA - CALABARZON' and (Yearly_Income / 365) = 385 Then 'Minimum'
			 when Region = 'IVA - CALABARZON' and (Yearly_Income / 365) < 385 Then 'Below Minimum'
			 when Region = 'VI - Western Visayas' and (Yearly_Income / 365) > 440 Then 'Above Minimum'
			 when Region = 'VI - Western Visayas' and (Yearly_Income / 365) = 440 Then 'Minimum'
			 when Region = 'VI - Western Visayas' and (Yearly_Income / 365) < 440 Then 'Below Minimum'
			 when Region = 'X - Northern Mindanao' and (Yearly_Income / 365) > 401 Then 'Above Minimum'
			 when Region = 'X - Northern Mindanao' and (Yearly_Income / 365) = 401 Then 'Minimum'
			 when Region = 'X - Northern Mindanao' and (Yearly_Income / 365) < 401 Then 'Below Minimum'
			 when Region = 'XII - SOCCSKSARGEN' and (Yearly_Income / 365) > 401 Then 'Above Minimum'
			 when Region = 'XII - SOCCSKSARGEN' and (Yearly_Income / 365) = 401 Then 'Minimum'
			 when Region = 'XII - SOCCSKSARGEN' and (Yearly_Income / 365) < 401 Then 'Below Minimum'
			 when Region = 'ARMM' and (Yearly_Income / 365) > 316 Then 'Above Minimum'
			 when Region = 'ARMM' and (Yearly_Income / 365) = 316 Then 'Minimum'
			 when Region = 'ARMM' and (Yearly_Income / 365) < 316 Then 'Below Minimum'
			 when Region = 'III - Central Luzon' and (Yearly_Income / 365) > 422 Then 'Above Minimum'
			 when Region = 'III - Central Luzon' and (Yearly_Income / 365) = 422 Then 'Minimum'
			 when Region = 'III - Central Luzon' and (Yearly_Income / 365) < 422 Then 'Below Minimum'
			 when Region = 'V - Bicol Region' and (Yearly_Income / 365) > 395 then 'Above Minimum'
			 when Region = 'V - Bicol Region' and (Yearly_Income / 365) = 395 then 'Minimum'
			 when Region = 'V - Bicol Region' and (Yearly_Income / 365) < 395 then 'Below Minimum'
			 when Region = 'IVB - MIMAROPA' and (Yearly_Income / 365) > 369 then 'Above Minimum'
			 when Region = 'IVB - MIMAROPA' and (Yearly_Income / 365) = 369 then 'Minimum'
			 when Region = 'IVB - MIMAROPA' and (Yearly_Income / 365) < 369 then 'Below Minimum'
			 when Region = 'VIII - Eastern Visayas' and (Yearly_Income / 365) > 375 then 'Above Minimum'
			 when Region = 'VIII - Eastern Visayas' and (Yearly_Income / 365) = 375 then 'Minimum'
			 when Region = 'VIII - Eastern Visayas' and (Yearly_Income / 365) < 375 then 'Below Minimum'
			 when Region = 'CAR' and (Yearly_Income / 365) > 430 then 'Above Minimum'
			 when Region = 'CAR' and (Yearly_Income / 365) = 430 then 'Minimum'
			 when Region = 'CAR' and (Yearly_Income / 365) < 430 then 'Below Minimum'
			 when Region = 'XI - Davao Region' and (Yearly_Income / 365) > 438 then 'Above Minimum'
			 when Region = 'XI - Davao Region' and (Yearly_Income / 365) = 438 then 'Minimum'
			 when Region = 'XI - Davao Region' and (Yearly_Income / 365) < 438 then 'Below Minimum'
			 when Region = 'VII - Central Visayas' and (Yearly_Income / 365) > 415 then 'Above Minimum'
			 when Region = 'VII - Central Visayas' and (Yearly_Income / 365) = 415 then 'Minimum'
			 when Region = 'VII - Central Visayas' and (Yearly_Income / 365) < 415 then 'Below Minimum'
			 when Region = 'I - Ilocos Region' and (Yearly_Income / 365) > 402 then 'Above Minimum'
			 when Region = 'I - Ilocos Region' and (Yearly_Income / 365) = 402 then 'Minimum'
			 when Region = 'I - Ilocos Region' and (Yearly_Income / 365) < 402 then 'Below Minimum'
			 end as Salary_Indicator
from dbo.Fili_salary_CSV;

select distinct region from dbo.Fili_salary_CSV;