#DP #dsa 

>[!tip] Problem
>Write a function countConstruct(string, vector\<string>) that takes in a target string and a vector of strings.
>
>Return the number of ways we can generate the target string using the vector of strings acting as a wordbank.
>
>Assume that the elements can be used infinite number of times.

examples:

![[Pasted image 20231114180315.png]]


template code:
```cpp
int countConstruct(vector<string> wordBank, string target, unordered_map<string, bool>& m)
{
    int count = 0;

    if (m.count(target))
    {
        return m[target];
    }
    else if (target == "")
    {
        return 1;
    }

    for (size_t i = 0; i < wordBank.size(); i++)
    {
        if (target.find(wordBank[i]) == 0)
        {
            // slice
            string tmp = target;
            tmp.erase(0, wordBank[i].size());

            m[target] = countConstruct(wordBank, tmp, m);
            count += m[target];
        }
    }

    return count;
}
```


