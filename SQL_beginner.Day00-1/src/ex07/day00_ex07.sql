--Упражнение 07. Первые шаги в мир SQL
--Давайте применим интервалы данных для personтаблицы. Создайте оператор SQL, который возвращает идентификаторы человека, имена человека и интервал возраста человека (задайте имя нового вычисляемого столбца как «interval_info») на основе приведенного ниже псевдокода.

SELECT
	name,
	CASE 
		when age BETWEEN 10 AND 20 then 'interval #1' 
		when age BETWEEN 20 AND 23 then 'interval #2' 
		else 'interwal #3' end AS interval_info
FROM
	person
ORDER BY
	interval_info
