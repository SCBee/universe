######  2023-09-09



#arrays 


#### Generating Pascal's Triangle
Form is:
0: [1] - starting point
1: [1, 1]
2: [1, 2, 1]
3: [1, 3, 3, 1]
4: [1, 4, 6, 4, 1]

The current row is generated using the previous row.
If the previous row is [1, 2, 1] and has the indices [0, 1, 2],
then the current row is calculated (using indices of prev row) using [-1 + 0, 0 + 1, 1 + 2]

The first and last element of a row is ALWAYS 1.