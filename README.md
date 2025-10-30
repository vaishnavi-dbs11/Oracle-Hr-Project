# Oracle-Hr-Project
# 🎯 Oracle HR Schema — Find Employees with Their Managers’ Names

📘 Project Overview
This project demonstrates how to retrieve each employee's manager name using:
1. **Self Join** — set-based approach.
2. **Correlated Subquery** — row-based approach.

🧠 Objective
To compare:
- Logical behavior and efficiency of self join vs correlated subquery.
- Performance differences.
- How Oracle treats subqueries as self-references internally.
  
🧠Logical behavior of self join vs correlated subquery.

self join - Oracle scans both tables together, joining them in one pass.

            Two logical copies of EMPLOYEES, but joined once → only one table scan + indexed lookup.
            
subquery  — Oracle executes the subquery once per outer row.

            If you have 107 employees, that’s 107 lookups into the same table.

⚙️ Performance differences.
                            
Self Join	                     
Joins EMPLOYEES table to itself once

Scans both copies together → fast

Correlated Subquery	          
Looks up manager for each employee separately	   

Executes once per outer row → slower

🧠 Key takeaway:
Both access the same table twice.

Both are logically self-references.

But the self join is set-based (runs once) while the correlated subquery is row-based (runs many times).
