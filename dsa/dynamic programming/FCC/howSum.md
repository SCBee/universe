#DP #dsa 

>[!tip] Problem
>Write a function howSum(int, vector) that takes in a targetSum and an array of integers.
>
>Return an array that add up to the targetSum using numbers from the array.
>
>Assume that the elements can be used infinite number of times and all numbers are positive.


Example:
	`howSum(7, {5,3,4,7}) -> {3,4} or {7}`

Example:
	`howSum(8, {2,3,5}) -> {2,2,2,2} or {3,5}`

Example:
	`howSum(7, {2,4}) -> null`

Example:
	`howSum(0, {1,2,3}) -> {}`


![[Pasted image 20231114121749.png]]

The decision tree for the first example. The leaf nodes that has a value of zero returns a vector with a single element (0). The leaf nodes that become negative (meaning the sum isn't possible) return an empty vector.

Template Code:

```cpp
vector<int> howSum(vector<int> v, int target, unordered_map<int, vector<int>>& m)
{
    if (m.count(target))
    {
        return m[target];
    }
    else if (target == 0)
    {
        return {0};
    }
    else if (target < 0)
    {
        return {};
    }

    for (size_t i = 0; i < v.size(); i++)
    {
        const int remainder = target - v[i];

        vector<int> remainderResult = howSum(v, remainder, m);
        if (remainderResult.size())
        {
            remainderResult.push_back(v[i]);
            m[target] = remainderResult;
            return m[target];
        }
    }

    return m[target] = {};
}
```

Using [[canSum]] and howSum, we can build the solution for [[bestSum]].

