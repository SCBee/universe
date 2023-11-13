#DP #1D #leetcode #neetcode


Leetcode 70. Climbing Stairs

Prompt:
```
You are climbing a staircase. It takes n steps to get to the top.

Each time, you can climb 1 or 2 steps. In how many distinct ways can you climb to the top?
```

We start on the ground and there are N number of steps. The top step is labelled n.

We want to determine the number of ways we can reach the top. This is a COUNT OCCURRENCES type of DP problem.

We can use iteration to push forward the number of steps we need to reach a given step. The number of ways we can reach the top is dependent on the number of ways we can reach the previous two steps.

On the first step, we can only get there in one way. On the second step, we can only get there in 2 ways. On the third step, we need to add the number of ways to get to the first step and to the second step, which means we have 3 ways to get to the third step.

This works because from the first step, we can get to the third step by either stepping forward one step twice, or stepping forward by two steps to get to the third. On the second step, we can only get to the third step by doing one step (which we already counted for in the stepping forward by one approach).


Leetcode 746. Min Cost Climbing Stairs

Prompt:
```
You are given an integer array `cost` where `cost[i]` is the cost of `ith` step on a staircase. Once you pay the cost, you can either climb one or two steps.

You can either start from the step with index `0`, or the step with index `1`.

Return the minimum cost to reach the top of the floor.
```

This is a variation of the climbing stairs problem, where we need to determine the cheapest way to get to the top. That means we need to choose the steps (each has a value associated with it) so that the sum of all these steps are the lowest possible.

We can use an iterative approach where we calculate the minimum cost for the next two steps. However, we can start from index 0 or index 1.

[10, 15, 20]


