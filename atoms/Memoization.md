
Memoization is saving previously calculated results so we don't have to recalculate expensive calculations.

This works when the problem has an overlapping substructure like in the fib problem.

The steps are:
1. Make it work (don't worry about efficiency yet).
	- visualise the problem
	- test
2. Make it efficient
	- add a memo object (hashmap, vector, 2d array)
	- add base case to check memo
	- store return values in the memo object

Further breaking down memoization problems:

- canSum
- howSum
- bestSum
- canConstruct
- countConstruct
- allConstruct

