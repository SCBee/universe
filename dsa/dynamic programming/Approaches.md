
DP can be split into top-down and bottom-up approaches.

Recursion can only do top-down whereas iterative with loops can do both top-down and bottom-up.

>[!tip] REMINDER
>Do practice problems and watch videos on solving DP problems to better understand the concepts!


We can use memoization for recursion and tabulation (pretty much the same as memoization) for iteration.

Memoization is saving the calculations we've already done so we don't have to redo them again (which can be very costly). This lets us decrease the time complexity of a solution significantly.

For the Fibonacci problem, we can turn the problem from $o(2^{n})$ to $o($