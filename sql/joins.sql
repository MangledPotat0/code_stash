-- joining two tables using shared Id column (personId) between two tables (Person and Address)

SELECT firstName, lastName, city FROM Person LEFT JOIN Address USING(personId);
