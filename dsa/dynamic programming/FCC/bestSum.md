>[!tip] Problem
>Write a function howSum(int, vector) that takes in a targetSum and an array of integers.
>
>Return the shortest array that add up to the targetSum using numbers from the array.
>
>Assume that the elements can be used infinite number of times and all numbers are positive.

Example:
	`bestSum(7, {5,3,4,7}) -> {7}`
	- Can be {3,4} or {7} but since {7} is shorter, we return {7}

Example:
	`bestSum(8, {2,3,5}) -> {3,5}`
	- Can be {2,2,2,2} or {3,5} but since {3,5} is shorter, we return {3,5}

Example:
	`bestSum(7, {2,4}) -> {}`

Example:
	`bestSum(0, {1,2,3}) -> {}`

