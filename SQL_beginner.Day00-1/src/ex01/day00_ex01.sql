-- Упражнение 01. Первые шаги в мир SQL

-- Пожалуйста, сделайте оператор выбора, который возвращает имена и возраст всех женщин из города Казань. Да, и пожалуйста, отсортируйте результаты по имени.

  SELECT name,
	age--,
	--address,
	--gender
FROM person
WHERE address = 'Kazan'
	AND gender = 'female'
ORDER BY name