--1 ый вариант с использованием оператора not 
SELECT
	name
FROM
	pizzeria
WHERE
	
	id not in (SELECT pizzeria_id FROM person_visits)

--2 вариант с использованием оператора EXISTS
SELECT
	name
FROM
	pizzeria
WHERE
	NOT EXISTS(
	SELECT 
		*
	FROM
		person_visits
	WHERE
		person_visits.pizzeria_id = pizzeria.id
	)