#DP #problem

Given a series

$$
1 + 2 + 3 + 4 + 5 + 6 + \dots + n = \sum_{i=1}^{n}i
$$
Starting with the sum of 1 element

$$
F(1) = 1
$$

Then with 2 elements using the value from the previous iteration

$$
F(2) = F(1) + 2 = 1 + 2 = 3
$$

Then with 3 elements using the value from the previous iteration

$$
F(3) = F(2) + 3 = 3 + 3 = 6
$$

We can keep doing this until we reach $F(n)$ which can be simplified as

$$
F(n) = F(n-1) + n
$$

```cpp
int sum(int n) {
	int sum = 0;

	if (n == 1) {
		return 1;
	} else {
		sum += sum(n-1) + n;
	}

	return sum;
}
```

