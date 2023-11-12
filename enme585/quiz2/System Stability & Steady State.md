#enme585 #quiz2 #controlsystems #notes #stability 


Stability is defined such that a signal is stable if the limit of the signal as time goes to inf, the limit converges to 0.

$$
\lim_{ t \to \infty } f(t) = 0
$$

#### Stability Lemmas
For a system represented by a transfer function, the system is stable if:

1) G(D) is stable if all the real parts of all of its poles are negative.
2) G(D) is BIBO stable if it is stable in the sense of $\lim_{ t \to \infty } g(t) = 0$ where $[\;g(t)\;] = G(D)$ is its impulse response.

So if we want to determine if a system is stable, we just need to check the roots of the denominator (Poles) of the transfer function.

For stability, we need the real parts of the roots to be negative. (Refer to case 1 above).


#### Instability Of One Term
If even just one term in the root is positive, then we have an unstable system. That is because a polynomial denominator can be expressed as the sum of terms and that one term will go to infinity while the rest go to 0.


#### Problems with Poles
However, finding the poles (roots of the denominator of a transfer function) can be extremely difficult for more complex transfer functions or it can be outright impossible to do so in its closed form.

Then, we need to ask the question: how can we determine the system's stability without finding the poles?

There are 4 methods we can use to assess a system's stability without finding the poles. They are
- [[Routh-Hurwitz Stability Criterion]]
- [[Nyquist Stability Criterion]]
- [[Root Locus Plots Stability Criterion]]
- [[Bode Plots Stability Criterion]]








