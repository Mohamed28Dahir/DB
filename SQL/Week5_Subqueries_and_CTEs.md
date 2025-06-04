# Week 5: Subqueries & CTEs (Common Table Expressions)

## Topics:
1. Subqueries
   - Single-row subqueries
   - Multi-row subqueries
   - Correlated subqueries
   - Subqueries in SELECT, FROM, WHERE
   
2. Common Table Expressions (CTEs)
   - Basic CTEs
   - Recursive CTEs
   - Multiple CTEs
   - CTE best practices

## Examples:
```sql
-- Subquery in WHERE clause
SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- Subquery in FROM clause
SELECT dept_name, avg_salary
FROM (
    SELECT 
        department as dept_name,
        AVG(salary) as avg_salary
    FROM employees
    GROUP BY department
) dept_stats
WHERE avg_salary > 60000;

-- Correlated subquery
SELECT 
    employee_name,
    salary,
    (SELECT AVG(salary) 
     FROM employees e2 
     WHERE e2.department = e1.department) as dept_avg
FROM employees e1;

-- Basic CTE
WITH HighValueCustomers AS (
    SELECT 
        customer_id, 
        SUM(order_amount) as total_spent
    FROM orders
    GROUP BY customer_id
    HAVING SUM(order_amount) > 10000
)
SELECT 
    c.customer_name, 
    h.total_spent
FROM HighValueCustomers h
JOIN customers c ON h.customer_id = c.customer_id;

-- Multiple CTEs
WITH 
    CustomerStats AS (
        SELECT 
            customer_id,
            COUNT(*) as order_count,
            SUM(order_amount) as total_spent
        FROM orders
        GROUP BY customer_id
    ),
    TopCustomers AS (
        SELECT *
        FROM CustomerStats
        WHERE total_spent > 5000
    )
SELECT 
    c.customer_name,
    t.order_count,
    t.total_spent
FROM TopCustomers t
JOIN customers c ON t.customer_id = c.customer_id;

-- Recursive CTE (organization hierarchy)
WITH RECURSIVE EmployeeHierarchy AS (
    -- Base case: top level employees
    SELECT 
        employee_id,
        employee_name,
        manager_id,
        1 as level
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    -- Recursive case
    SELECT 
        e.employee_id,
        e.employee_name,
        e.manager_id,
        eh.level + 1
    FROM employees e
    JOIN EmployeeHierarchy eh ON e.manager_id = eh.employee_id
)
SELECT * FROM EmployeeHierarchy;
```

## Practice Exercises:
1. Write subqueries in different clauses
2. Create CTEs for complex data analysis
3. Build recursive queries for hierarchical data
4. Optimize queries using CTEs
5. Compare subquery vs CTE approaches

## Key Concepts to Master:
- Subquery types and use cases
- CTE benefits and limitations
- Query optimization
- Recursive query patterns
- When to use subqueries vs CTEs

## Common Use Cases:
1. Hierarchical data analysis
2. Complex data transformations
3. Report generation
4. Data filtering with dynamic criteria
5. Performance optimization

## Additional Resources:
- Advanced SQL documentation
- Query optimization guides
- Recursive CTE examples
- Real-world use cases
- Performance comparison studies 