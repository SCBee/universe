#DP #dsa 

>[!tip] Problem
>Write a function canSum(int, vector) that takes in a targetSum and an array of integers.
>
>Return a boolean indicating whether it is possible to generate the targetSum using numbers from the array.
>
>Assume that the elements can be used infinite number of times and all numbers are positive.


Example:
	`canSum(7, {5,3,4,7}) -> true`


![[Pasted image 20231113195719.png]]

We can sum up to 7 by:
- 3 + 4
- 4 + 3
- 7

So there are actually three ways to sum up to 7. We only need to find one so we can terminate the second we find a combination that returns true.

Example:
	`canSum(7, {2,4}) -> false`


![[Pasted image 20231113203147.png]]

We can't sum up to 7 with the array `{2,4}`. We can return false as the default case.

Template Code:
```cpp
int canSum(vector<int> v, int target, std::unordered_map<int, int>& m)
{
    if (target == 0) {
        return true;
    }
    if (target < 0) {
        return false;
    }
    if (m.count(target)) {
        return m[target];
    }

    for (int i = 0; i < v.size(); ++i) {
        const int remainder = target - v[i];
        m[target] = canSum(v, remainder, m);
        if (m[target]) {
            return true;
        }
    }

    return m[target] = false;
}
```

Using the logic from canSum, we can build the solution to [[howSum]].

