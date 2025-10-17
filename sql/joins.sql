-- joining two tables using shared Id column (personId) between two tables (Person and Address)

SELECT firstName, lastName, city FROM Person LEFT JOIN Address USING(personId);

-- self-joining to attach manager salary to each row, so that employee salary and manager salary can be compared

SELECT employee.name AS Employee
FROM Employee employee
JOIN Employee manager
ON employee.managerId = manager.id
WHERE employee.salary > manager.salary;
