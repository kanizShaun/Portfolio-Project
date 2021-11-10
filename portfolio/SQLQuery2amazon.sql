--show database
SELECT * FROM [Portfolio].[dbo].[Amazon] order by 3,4

--dropping unnecessary columns

ALTER TABLE [Portfolio].[dbo].[Amazon]
DROP COLUMN [price1] ,[average_review_rating1];

Alter table[Portfolio].[dbo].[Amazon]
DROP COLUMN [F15],[F16],[F17],[F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25],[F26],[F27],[F28],[F29],[F30],[F31],[F32],[F33],[F34],[F35]
      ,[F36]
      ,[F37]
      ,[F38]
      ,[F39]
      ,[F40]
      ,[F41]
      ,[F42]
      ,[F43]
      ,[F44]
      ,[F45]
      ,[F46]
      ,[F47]
      ,[F48]
      ,[F49]
      ,[F50]
      ,[F51]
      ,[F52]
      ,[F53]
      ,[F54]
      ,[F55]
      ,[F56]
      ,[F57]
      ,[F58]
      ,[F59]
      ,[F60]
      ,[F61]
      ,[F62]
      ,[F63]
      ,[F64]
      ,[F65]
      ,[F66]
      ,[F67]
      ,[F68]
      ,[F69]
      ,[F70]
      ,[F71]
      ,[F72]
      ,[F73]
      ,[F74]
      ,[F75]
      ,[F76]
      ,[F77]
      ,[F78]
      ,[F79]
      ,[F80]
      ,[F81]
      ,[F82],[F83],[F84],[F85],[F86],[F87],[F88],[F89],[F90],[F91],[F92],[F93],[F94],[F95],[F96],[F97],[F98],[F99],[F100],[F101],[F102],[F103],[F104],[F105],[F106],[F107],[F108],[F109],[F110],[F111]
      ,[F112]
      ,[F113]
      ,[F114]
      ,[F115]
      ,[F116]
      ,[F117]
      ,[F118]
      ,[F119]
      ,[F120]
      ,[F121]
      ,[F122]
      ,[F123]
      ,[F124]
      ,[F125]
      ,[F126]
      ,[F127]
      ,[F128]
      ,[F129]
      ,[F130]
      ,[F131]
      ,[F132]
      ,[F133]
      ,[F134]
      ,[F135]
      ,[F136]
      ,[F137]
      ,[F138]
      ,[F139]
      ,[F140]
      ,[F141]
      ,[F142]
      ,[F143]
      ,[F144]
      ,[F145]
      ,[F146]
      ,[F147]
      ,[F148]
      ,[F149]
      ,[F150]
      ,[F151]
      ,[F152]
      ,[F153]
      ,[F154]
      ,[F155]
      ,[F156]
      ,[F157]
      ,[F158]
      ,[F159]
      ,[F160]
      ,[F161]
      ,[F162]
      ,[F163]
      ,[F164]
      ,[F165]
      ,[F166]
      ,[F167]
      ,[F168]
      ,[F169]
      ,[F170]
      ,[F171]
      ,[F172]
      ,[F173]
      ,[F174]
      ,[F175]
      ,[F176]
      ,[F177]
      ,[F178]
      ,[F179]
      ,[F180]
      ,[F181]
      ,[F182]
      ,[F183]
      ,[F184]
      ,[F185]
      ,[F186]
      ,[F187]
      ,[F188]
      ,[F189]
      ,[F190]
      ,[F191]
      ,[F192]
      ,[F193]
      ,[F194]
      ,[F195]
      ,[F196]
      ,[F197]
      ,[F198]
      ,[F199]
      ,[F200]
      ,[F201]
      ,[F202]
      ,[F203]
      ,[F204]
      ,[F205]
      ,[F206]
      ,[F207]
      ,[F208]
      ,[F209]
      ,[F210]
      ,[F211]
      ,[F212]
      ,[F213]
      ,[F214]
      ,[F215]
      ,[F216]
      ,[F217]
      ,[F218]
      ,[F219]
      ,[F220]
      ,[F221]
      ,[F222]
      ,[F223]
      ,[F224]
      ,[F225]
      ,[F226]
      ,[F227]
      ,[F228]
      ,[F229]
      ,[F230]
      ,[F231]
      ,[F232]
      ,[F233]
      ,[F234]
      ,[F235]
      ,[F236]
      ,[F237]
      ,[F238],[F239],[F240],[F24],[F242],[F243],[F244],[F245],[F246],[F247],[F248],[F249],[F250],[F251],[F252],[F253],[F254],[F255]

SELECT * FROM [Portfolio].[dbo].[Amazon] order by 3,4

--finding null values
SELECT [uniq_id]
      ,[product_name]
      ,[manufacturer]
      ,[price]
      ,[number_available_in_stock]
      ,[number_of_reviews]
      ,[number_of_answered_questions]
      ,[average_review_rating]
      ,[amazon_category]
      ,[sub_category]
      ,[type1]
      ,[products]
FROM [Portfolio].[dbo].[Amazon]
WHERE  [price] IS NULL;

      
--removing null values
DELETE FROM [Portfolio].[dbo].[Amazon] 
WHERE price is null;

SELECT * FROM [Portfolio].[dbo].[Amazon] order by 3,4

--final outcome of null values query

SELECT COUNT(*) AS [Total Number of Rows] FROM [Portfolio].[dbo].[Amazon]

SELECT SUM(CASE WHEN [product_name] is null THEN 1 ELSE 0 END) 
AS [Number Of Null Values] , COUNT([product_name]) AS [Number Of Non-Null Values] 
FROM [Portfolio].[dbo].[Amazon]

SELECT * FROM [Portfolio].[dbo].[Amazon] WHERE 
price is NULL



--select that will be used
SELECT[product_name],[manufacturer],[price],[number_available_in_stock],[average_review_rating],[amazon_category]
FROM [Portfolio].[dbo].[Amazon] order by 3,4

--updating columns
UPDATE [Portfolio].[dbo].[Amazon]
SET [number_available_in_stock]=0
WHERE [number_available_in_stock] is null;

UPDATE [Portfolio].[dbo].[Amazon]
SET [number_of_answered_questions] = 0
WHERE [number_of_answered_questions] is null;

UPDATE [Portfolio].[dbo].[Amazon]
SET [number_of_reviews] = 0
WHERE [number_of_reviews] is null;

update [Portfolio].[dbo].[Amazon]
set manufacturer = 'Not Available'
where manufacturer is null

update [Portfolio].[dbo].[Amazon]
set amazon_category = 'Not Available'
where amazon_category is null

update [Portfolio].[dbo].[Amazon]
set products = 'Not Available'
where products is null

update [Portfolio].[dbo].[Amazon]
set sub_category = 'Not Available'
where sub_category is null

update [Portfolio].[dbo].[Amazon]
set type1 = 'Not Available'
where type1 is null

update [Portfolio].[dbo].[Amazon]
set average_review_rating = 0
where average_review_rating is null

select * from [Portfolio].[dbo].[Amazon] where [uniq_id] is null
select * from [Portfolio].[dbo].[Amazon] where [product_name] is null
select * from [Portfolio].[dbo].[Amazon] where [manufacturer] is null
select * from [Portfolio].[dbo].[Amazon] where [price] is null
select * from [Portfolio].[dbo].[Amazon] where [number_available_in_stock] is null
select * from [Portfolio].[dbo].[Amazon] where [number_available_in_stock] is null
select * from [Portfolio].[dbo].[Amazon] where [number_of_reviews] is null

SELECT * FROM [Portfolio].[dbo].[Amazon] order by 3,4

--removing white space

UPDATE [Portfolio].[dbo].[Amazon]
SET sub_category = replace(sub_category, ' ', '');

update [Portfolio].[dbo].[Amazon]
set type1 = REPLACE(type1, ' ','')

update [Portfolio].[dbo].[Amazon]
set products = REPLACE(products, ' ','')

--clean data exploration
SELECT COUNT(manufacturer) AS [Total Number of Rows] FROM [Portfolio].[dbo].[Amazon]

select count(distinct manufacturer) from [Portfolio].[dbo].[Amazon]

select distinct manufacturer from [Portfolio].[dbo].[Amazon]

SELECT COUNT(product_name) AS [Total Number of Rows] FROM [Portfolio].[dbo].[Amazon]

select count(distinct product_name) from [Portfolio].[dbo].[Amazon]

select distinct product_name from [Portfolio].[dbo].[Amazon]

select count([price]) from [Portfolio].[dbo].[Amazon]

select avg([price]) from [Portfolio].[dbo].[Amazon]

select count(distinct price) from [Portfolio].[dbo].[Amazon]

select count(distinct product_name) from [Portfolio].[dbo].[Amazon]

select [product_name],[manufacturer],[price],[number_available_in_stock],[average_review_rating],
[amazon_category], [sub_category],[type1],[products] 
from [Portfolio].[dbo].[Amazon] order by price desc

select manufacturer, max(average_review_rating) as highest_ratings from [Portfolio].[dbo].[Amazon] 
group by manufacturer order by highest_ratings asc


--highest price

select [product_name],[manufacturer],[number_available_in_stock], price
from [Portfolio].[dbo].[Amazon] where price =(select max(price) from [Portfolio].[dbo].[Amazon])

--lowest price

select [product_name],[manufacturer],[number_available_in_stock], price
from [Portfolio].[dbo].[Amazon] where price =(select min(price) from [Portfolio].[dbo].[Amazon])

--highest rated products 

select [product_name],[manufacturer],[number_available_in_stock], price,average_review_rating
from [Portfolio].[dbo].[Amazon] where average_review_rating =(select max(average_review_rating) from [Portfolio].[dbo].[Amazon])

--no ratings

select [product_name],[manufacturer],[number_available_in_stock], price,average_review_rating
from [Portfolio].[dbo].[Amazon] where average_review_rating = (select min(average_review_rating) from [Portfolio].[dbo].[Amazon])

--modifying columns
 SELECT * FROM [Portfolio].[dbo].[Amazon] order by 3,4;

 select [sub_category], [type1], [products], CONCAT([sub_category],'-', [type1],'-', [products]) 
 as Sub_Cat from [Portfolio].[dbo].[Amazon]

 select * from [Portfolio].[dbo].[Amazon] where sub_category is not null order by 3,4

 --finding and removing duplicate rows 

select [product_name],[manufacturer],[price],[number_available_in_stock],[number_of_reviews],count(*) as duplicates
from [Portfolio].[dbo].[Amazon] group by [product_name], [manufacturer],[price],[number_available_in_stock],
[number_of_reviews]
having count(*)>1

WITH CTE([product_name],[manufacturer],[price],[number_available_in_stock],[number_of_reviews] 
    ,duplicatecount)
AS (SELECT [product_name],[manufacturer],[price],[number_available_in_stock],[number_of_reviews], 
           ROW_NUMBER() OVER(PARTITION BY [product_name],[manufacturer],[price],
		   [number_available_in_stock],[number_of_reviews]
           ORDER BY product_name) AS DuplicateCount
    FROM [Portfolio].[dbo].[Amazon])
select * from CTE

WITH CTE([product_name],[manufacturer],[price],[number_available_in_stock],[number_of_reviews] 
    ,DuplicateCount)
AS (SELECT [product_name],[manufacturer],[price],[number_available_in_stock],[number_of_reviews], 
           ROW_NUMBER() OVER(PARTITION BY [product_name],[manufacturer],[price],
		   [number_available_in_stock],[number_of_reviews]
           ORDER BY product_name) AS DuplicateCount
    FROM [Portfolio].[dbo].[Amazon])
DELETE FROM CTE
WHERE DuplicateCount > 1;

select * from [Portfolio].[dbo].[Amazon] order by 3, 4






