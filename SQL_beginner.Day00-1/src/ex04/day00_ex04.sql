--Упражнение 04. Первые шаги в мир SQL

--Создайте оператор выбора, который возвращает одно вычисляемое поле с именем «person_information» в одной строке, как описано в следующем примере:
--Anna (age:16,gender:'female',address:'Moscow')
--Наконец, добавьте пункт упорядочивания по вычисляемому столбцу в порядке возрастания. Обратите внимание на кавычки в формуле!

SELECT
	concat(name,' (age:', age,',gender:''',gender,''',address:''',address,''' )') AS person_information
FROM 
	person
ORDER BY
	person_information