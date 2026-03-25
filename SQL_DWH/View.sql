CREATE VIEW vw_source_customers AS
SELECT 
  c.customer_id, 
  c.first_name, 
  c.last_name, 
  c.email, 
  a.street_number, 
  a.street_name, 
  a.city, 
  cou.country_name, 
  ast.address_status
FROM dbo.customer c
JOIN dbo.customer_address ca ON c.customer_id = ca.customer_id
JOIN dbo.address a ON ca.address_id = a.address_id
JOIN dbo.country cou ON a.country_id = cou.country_id
-- This uses YOUR table's correct column name: status_id
JOIN dbo.address_status ast ON ca.status_id = ast.status_id
GO