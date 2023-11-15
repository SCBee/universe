#DP #dsa 

>[!tip] Problem
>Write a function canConstruct(string, vector\<string>) that takes in a target string and a vector of strings.
>
>Return a boolean indicating whether it is possible to generate the target string using the vector of strings acting as a wordbank.
>
>Assume that the elements can be used infinite number of times.

examples:
	`canConstruct("abcdef", {"ab", "abc", "cd", "def", "abcd"}) -> true`
	`canConstruct("skateboard", {"bo", "rd", "ate", "t", "ska", "sk", "boar"}) -> false`
	`canConstruct("", {"cat", "dog", "mouse"}) -> true`

![[Pasted image 20231114175031.png]]

Template Code:
```cpp
bool canConstruct(vector<string> wordBank, string target, unordered_map<string, bool>& m)
{
    if (target == "")
    {
        return true;
    }
    if (m.count(target))
    {
        return m[target];
    }

    for (size_t i = 0; i < wordBank.size(); i++)
    {
        string remainder = target;
        if (target.find(wordBank[i]) == 0)
        {
            // remove the word
            remainder.erase(0, wordBank[i].size());
            m[target] = canConstruct(wordBank, remainder, m);
            if (m[target])
            {
                return true;
            }
        }
    }

    return m[target] = false;
}
```

Using canConstruct, we can build the solution for [[countConstruct]].

