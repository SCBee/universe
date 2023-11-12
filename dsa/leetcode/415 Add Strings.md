# [415\. Add Strings](https://leetcode.com/problems/add-strings/)

## Description

Difficulty: **Easy**

Given two non-negative integers, `num1` and `num2` represented as string, return _the sum of_ `num1` _and_ `num2` _as a string_.

You must solve the problem without using any built-in library for handling large integers (such as `BigInteger`). You must also not convert the inputs to integers directly.

## Work
- Constraints:
	- Don't use a BigInteger (Java) or equivalent
	- Don't convert inputs to integers directly
- inputs consist of only digits (don't have to clean or check for alphabetical or grammar characters)
- inputs do not have any leading zeros

**examples**
- "11" + "123" -> "134"
- "456" + "77" -> "533"
- "0" + "0" -> "0"

numbers are converted to integers and then added, but we need to add them digit by digit because the values are large and may not fit within an integer.

to get the digits, do modulo and division operations, we get the lowest digit first with this method

```cpp
int x = 12345;
std::vector<int> v;

while (x > 0) {
	v.push_back(x % 10);
	v /= 10;
}
```

## Solution

Language: **c++**

```cpp
std::string reverseString(std::string str)
{
    std::string out;

    for (auto it = str.rbegin(); it != str.rend(); ++it)
    {
        out.push_back(*it);
    }

    return out;
}

std::string addStrings(std::string num1, std::string num2)
{
    // output string
    std::string out;

    // reverse iterators for both strings
    std::string::reverse_iterator it1 = num1.rbegin();
    std::string::reverse_iterator it2 = num2.rbegin();

    // go through the numbers together (both numbers have a value)
    int carry = 0;
    while (it1 != num1.rend() or it2 != num2.rend())
    {
        // default value if there are no longer digits for a given string
        // This will happen if either num1 or num2 are larger than the other
        int a = 0;
        int b = 0;
        if (it1 == num1.rend())
        {
            a = 0;
        }
        else
        {
            a = (*it1 - '0');
        }
        if (it2 == num2.rend())
        {
            b = 0;
        }
        else
        {
            b = (*it2 - '0');
        }
        // get carry digit and base
        // std::cout << "a: " << a << " b: " << b << " c: " << carry << "\n";
        int sum = a + b + carry;
        carry = sum / 10;
        sum %= 10;

        // append the base to the out string
        out.push_back(sum + '0');

        // go next
        if (it1 != num1.rend())
        {
            it1++;
        }
        if (it2 != num2.rend())
        {
            it2++;
        }
    }
    out.push_back(carry + '0');

    return reverseString(out);
}
```