SELECT CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) @> CAST('{"name": "Bob"}' AS JSONB);

SELECT (CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) -> 'favoriteFoods') ? 'Banana';