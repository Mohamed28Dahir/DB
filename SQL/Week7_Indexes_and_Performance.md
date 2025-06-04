# Week 7: Indexes & Performance Optimization

## Topics:
1. Indexes
   - Types of indexes (clustered, non-clustered)
   - Creating indexes
   - Index maintenance
   - Covering indexes
   - Filtered indexes
   
2. Query Optimization
   - Execution plans
   - Performance tuning
   - Statistics
   - Best practices
   - Query cost analysis

## Examples:
```sql
-- Creating a basic index
CREATE INDEX idx_last_name
ON employees(last_name);

-- Creating a composite index
CREATE INDEX idx_product_category
ON products(category_id, product_name);

-- Creating a filtered index
CREATE INDEX idx_active_employees
ON employees(employee_id, last_name)
WHERE status = 'Active';

-- Creating a covering index
CREATE INDEX idx_order_summary
ON orders(order_date, customer_id, total_amount)
INCLUDE (status, shipping_address);

-- Analyzing query performance
EXPLAIN ANALYZE
SELECT p.product_name, c.category_name
FROM products p
JOIN categories c ON p.category_id = c.category_id
WHERE p.price > 100;

-- Index maintenance
ALTER INDEX ALL ON products REBUILD;

-- Update statistics
UPDATE STATISTICS products
WITH FULLSCAN;

-- Finding missing indexes
SELECT 
    dm_mid.database_id,
    dm_migs.avg_user_impact,
    dm_migs.last_user_seek,
    dm_mid.statement AS TableName,
    dm_mid.equality_columns,
    dm_mid.inequality_columns,
    dm_mid.included_columns
FROM sys.dm_db_missing_index_details dm_mid
CROSS APPLY sys.dm_db_missing_index_groups_query_stats dm_migs;
```

## Practice Exercises:
1. Create appropriate indexes for common queries
2. Analyze query execution plans
3. Optimize slow-running queries
4. Maintain existing indexes
5. Monitor index usage
6. Implement covering indexes

## Key Concepts to Master:
- Index types and use cases
- Query plan analysis
- Statistics management
- Index maintenance
- Performance monitoring

## Performance Optimization Checklist:
1. Analyze execution plans
2. Check index usage
3. Update statistics
4. Review query patterns
5. Monitor resource usage
6. Implement appropriate indexes

## Common Performance Issues:
1. Missing indexes
2. Outdated statistics
3. Poorly written queries
4. Fragmented indexes
5. Inappropriate index usage

## Additional Resources:
- SQL Server Index Design Guide
- Query Performance Tuning
- Execution Plan Analysis
- Index Maintenance Best Practices
- Performance Monitoring Tools 