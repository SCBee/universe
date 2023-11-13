#DP #1D #leetcode #neetcode


Leetcode 70. Climbing Stairs

Prompt:
```
You are climbing a staircase. It takes n steps to get to the top.

Each time, you can climb 1 or 2 steps. In how many distinct ways can you climb to the top?
```

We start on the ground and there are N number of steps. The top step is labelled n.

We want to determine the number of ways we can reach the top. This is a COUNT OCCURRENCES type of DP problem.

We can use iteration to push forward the number of steps we need to reach a given step. The number of ways we can reach the top is dependent on the previous ways