--Упражнение 06. Первые шаги в мир SQL
--Используйте конструкцию SQL из упражнения 05 и добавьте в предложение новый вычисляемый столбец (используйте имя столбца «check_name») с оператором проверки (псевдокод для этой проверки представлен ниже) SELECT.

--if (person_name == 'Denis') then return true
-- else return false

SELECT
    (SELECT name FROM person WHERE person.id = person_order.person_id) AS NAME,
	(SELECT CASE WHEN name = 'Denis' THEN true ELSE false END AS check_name FROM person WHERE person.id = person_order.person_id)--,
 	--order_date,
	--menu_id
FROM 
 	person_order   
WHERE
	order_date = '2022-01-07' AND (menu_id = 14 OR menu_id = 18 OR menu_id = 13)