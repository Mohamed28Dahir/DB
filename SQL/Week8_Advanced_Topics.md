# Week 8: Advanced Topics

## Topics:
1. Transactions
   - ACID properties
   - Transaction isolation levels
   - Deadlock handling
   - Concurrency control
   
2. Window Functions
   - ROW_NUMBER()
   - RANK() and DENSE_RANK()
   - LAG/LEAD
   - FIRST_VALUE/LAST_VALUE
   
3. Triggers
   - Creating triggers
   - Types of triggers
   - Trigger best practices
   - Error handling in triggers

## Examples:
```sql
-- Transaction with different isolation levels
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION;
    UPDATE accounts 
    SET balance = balance - 100 
    WHERE account_id = 1;
    
    UPDATE accounts 
    SET balance = balance + 100 
    WHERE account_id = 2;
    
    IF @@ERROR = 0
        COMMIT TRANSACTION;
    ELSE
        ROLLBACK TRANSACTION;

-- Window functions
SELECT 
    employee_name,
    department,
    salary,
    ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) as salary_rank,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) as salary_rank_with_gaps,
    DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) as salary_rank_no_gaps,
    LAG(salary) OVER (PARTITION BY department ORDER BY hire_date) as previous_salary,
    LEAD(salary) OVER (PARTITION BY department ORDER BY hire_date) as next_salary,
    AVG(salary) OVER (PARTITION BY department) as dept_avg_salary
FROM employees;

-- Creating an AFTER trigger
CREATE TRIGGER trg_update_audit
ON employees
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO employee_audit (
        employee_id,
        changed_at,
        action,
        old_salary,
        new_salary,
        modified_by
    )
    SELECT 
        i.employee_id,
        GETDATE(),
        'UPDATE',
        d.salary,
        i.salary,
        SYSTEM_USER
    FROM inserted i
    JOIN deleted d ON i.employee_id = d.employee_id
    WHERE i.salary != d.salary;
END;

-- Creating an INSTEAD OF trigger
CREATE TRIGGER trg_prevent_weekend_updates
ON orders
INSTEAD OF UPDATE
AS
BEGIN
    IF DATEPART(WEEKDAY, GETDATE()) IN (1, 7)
    BEGIN
        THROW 50001, 'Updates not allowed on weekends', 1;
        RETURN;
    END
    
    UPDATE o
    SET 
        o.status = i.status,
        o.modified_date = GETDATE()
    FROM orders o
    JOIN inserted i ON o.order_id = i.order_id;
END;
```

## Practice Exercises:
1. Implement transaction management
2. Write complex window functions
3. Create different types of triggers
4. Handle deadlocks
5. Implement audit trails
6. Optimize concurrent operations

## Key Concepts to Master:
- Transaction isolation levels
- Window function types
- Trigger execution order
- Concurrency patterns
- Error handling strategies

## Advanced Scenarios:
1. Complex data analysis with window functions
2. Maintaining data integrity with triggers
3. Managing concurrent transactions
4. Implementing audit systems
5. Handling race conditions

## Additional Resources:
- Advanced Transaction Management
- Window Functions Documentation
- Trigger Design Patterns
- Concurrency Control Strategies
- Performance Optimization for Triggers 