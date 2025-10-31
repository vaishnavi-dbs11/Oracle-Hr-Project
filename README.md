
# 🎯 Employee - Manager Reports

📘 Project Overview : 

1. Learning how self Joim works 

2. Co-related Subqueries used to acheive Same result 

3. self- reference nature of self join and subquey 

4. Why Self Join is more Efficient

📘 Analysis : 

Points 1 & 2 are explained with Psudocodes:

3. 🧠 Similarity and self- reference nature of self join and subquey :

Both access the same table twice.

Both are logically self-references.

4. 🧠 Differences and Why Self Join is more Efficient :
                            
⚙️Self Join

Joins EMPLOYEES table to itself once

Scans both copies together → fast

indexed lookup

set-based approach.

⚙️Correlated Subquery	    

Looks up manager for each employee separately; If you have 107 employees, that’s 107 lookups into the same table.

Executes the subquery once per outer row → slower

row-based approach.

# 🎯 1. Find Employees with Their Managers’ Names





