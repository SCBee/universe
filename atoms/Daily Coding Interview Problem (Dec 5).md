- math focused

Good morning! Here's your coding interview problem for today. Given a real number n, find the square root of n. For example, given n = 9, return 3.

O(1) implementation:

```
return math.exp(math.log(x)/2)
```


$$
\text{let } x = 9
$$

then take the log of x

$$
\log(x) = \log(9)
$$

then divide by 2

$$
\frac{\log(x)}{2} = \frac{\log(9)}{2}
$$

reminder: power property of logarithms

$$
\log_{b}m^{p} = p\log_{b}m
$$

then

$$
\frac{\log(x)}{2} = \log(x^{\frac{1}{2}})
$$

Ta