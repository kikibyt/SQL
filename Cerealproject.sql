--Hello!
--In this project i will be answering five questions but i'll be starting off by introducing the dataset
SELECT *
FROM Cerealproject..cereal$
order by 1,2

--•	What is the average content of each nutrient and element per manufacturer?

SELECT mfr, AVG(calories) AS avg_calories,AVG(fat) as avg_fat, avg(carbo) as avg_carbo,avg(potass) as avg_potass, AVG(cups) AS avg_cup, AVG(protein) AS avg_protein, AVG(vitamins) AS avg_vitamins, AVG(sugars) AS avg_sugar, AVG(sodium) AS avg_sodium
FROM Cerealproject..cereal$
GROUP BY mfr

--•	What is the number of calories per ounce for each product?
SELECT type, calories / cups AS calories_per_ounce
FROM Cerealproject..cereal$

--•	What is the average rating per manufacturer? Is it somehow connected to average nutrient content?
SELECT mfr, AVG(rating) AS avg_rating,AVG(fat) as avg_fat, avg(carbo) as avg_carbo,avg(potass) as avg_potass,  AVG(calories) AS avg_calories, AVG(protein) AS avg_protein, AVG(vitamins) AS avg_vitamins, AVG(sugars) AS avg_sugar, AVG(sodium) AS avg_sodium
FROM Cerealproject..cereal$
GROUP BY mfr

--•	Which manufacturer possesses the best shelf location?
SELECT mfr, MAX(shelf) AS best_shelf_location
FROM Cerealproject..cereal$
GROUP BY mfr
ORDER BY best_shelf_location DESC

--•	What is the nutritional value of each cereal according to protein, fat, and carbohydrate data.
SELECT type, protein, fat, carbo
FROM Cerealproject..cereal$



