
# 🎯 Reports

📘 Project Overview


🧠 Objective

# 🎯 1. Find Employees with Their Managers’ Names

🧠 Differences:
                            
⚙️Self Join

Joins EMPLOYEES table to itself once

Scans both copies together → fast

indexed lookup

set-based approach.

⚙️Correlated Subquery	    

Looks up manager for each employee separately; If you have 107 employees, that’s 107 lookups into the same table.

Executes the subquery once per outer row → slower

row-based approach.

🧠 Similarity:

Both access the same table twice.

Both are logically self-references.

