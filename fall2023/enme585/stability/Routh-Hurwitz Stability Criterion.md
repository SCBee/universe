#enme585 #quiz2 #controlsystems #notes #stability


The Routh-Hurwitz Criterion is one of the methods to determine the stability of a control system without needing to find the poles of the transfer function.

- [4] RH states that all roots lie in the left-hand plane (LHP) if and only if a certain set of algebraic combinations of the coefficients all have the same sign.

In simpler terms, we follow a defined set of steps to determine the stability. The steps are performed to assess the coefficients of the transfer function's polynomial. That's it.

We can assess the stability of the system by looking at the coefficients of the polynomial.

Here is an example:

$$
G(s) = \frac{1}{s^{4} + 3s^{2} - 5s^{2} + s + 2}
$$

#### Step 1
First thing we check is the signs of the polynomial. Are they all the same?

- [1] If they are not the same, we can instantly say it's not stable!

However, this first step does not tell us that the system is stable. It only tells us if we can immediately say it's unstable.

#### Step 2
We fill out the Routh Array.

Example:

$$
G(s) = \frac{1}{s^{2} - s + 4} \times \frac{1}{s+2} \times \frac{1}{s+1} = \frac{1}{s^{4} + 2s^{3} + 3s^{2} + 10s + 8}
$$

Well, we can see that all signs in the denominator are the same, so we can't immediately rule out that this is an unstable system.

Now, we have to fill out the Routh Array to determine its stability.

| terms |     |     |     |     |     |
| ----- |:---:| --- |:---:| --- | --- |
| s4    |  1  | 3   |  8  |     |     |
| s3    |  2  | 10  |  0  |     |     |
| s2    | -2  | 8   |  0  |     |     |
| s1    | 18  | 0   |     |     |     |
| s0    |  8  |     |     |     |     |

Fill the first two rows with the coefficients. They are alternating so the first row is the 1st, 3rd, and 5th coefficients. The second row is the 2nd and 4th coefficients.

$$
Polynomial = As^{6} + Bs^{5} + Cs^{4} + Ds^{3} + Es^{2} + Fs^{1} + G
$$

The remaining rows are filled using the values from the previous two rows in the form of:

| terms |                     |                   |                   |     |
|:-----:|:-------------------:| ----------------- | ----------------- | --- |
|  s6   |          a          | c                 | e                 | g   |
|  s5   |          b          | d                 | f                 | 0   |
|  s4   | $\frac{bc - ad}{b}$ | $\frac{be-af}{b}$ | $\frac{bg-a0}{b}$ |     |
|  s3   |                     |                   |                   |     |
|  s2   |                     |                   |                   |     |
|  s1   |                     |                   |                   |     |
|  s0   |                     |                   |                   |     |

Going back to the original table

| terms |     |     |     |     |     |
| ----- |:---:| --- |:---:| --- | --- |
| s4    |  1  | 3   |  8  |     |     |
| s3    |  2  | 10  |  0  |     |     |
| s2    | -2  | 8   |  0  |     |     |
| s1    | 18  | 0   |     |     |     |
| s0    |  8  |     |     |     |     |

We only care about the terms in the first column. We look at how many times the signs change. In this case, the sign changes twice, since we go from + to - and then - back to +.

The number of times the signs change is the number of times we have a pole in the RHP.

- [1] So the system is unstable if there is a sign flip in the Routh Array's first column!



