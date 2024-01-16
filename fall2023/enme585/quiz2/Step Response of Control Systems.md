#enme585 #controlsystems #quiz2 #notes 

Covering the step response of
- 1st order systems
- 2nd order systems


#### Step Response
The step response is the system's response to a step input.

The step input is defined to be

$$
u(D) = \frac{1}{D}
$$
or the frequency domain form

$$
u(t) = 1
$$

#### First Order Systems
The general forms are
$$
T_{1}(D) = \frac{c}{\tau D + 1}
$$
or

$$
T_{1}(D) = \frac{ca}{D+a}
$$

where

$$
a = \frac{1}{\tau}
$$

Applying the step input to the first order system will yield its step response

$$
y(D) = \left( \frac{ca}{D+a} \right)\left( \frac{1}{D} \right)
$$

Converting this to its equivalent sum of multiple terms form

$$
\begin{align}
y(D) &= \left( \frac{ca}{D+a} \right)\left( \frac{1}{D} \right) \\
&= \frac{ca}{D(D+a)} \\
&= \frac{A}{D} + \frac{B}{D+a} \\
&= AD + Aa + BD = ca \\
\end{align}
$$

Comparing common D terms

$$
\begin{align}
D&:\;\; A + B = 0 \\
1&:\;\; Aa = ca
\end{align}
$$

then

$$
\begin{align}
A &= c \\
B &= -c
\end{align}
$$

So our equation becomes

$$
y(D) = \frac{c}{D} - \frac{c}{D+a}
$$

and taking the inverse laplace, we get its frequency domain form

$$
y(t) = c[1 - e^{-at}]
$$

We can see that at steady state ($t\to \infty$), the system will converge to c. The value c is known as the steady-state gain or dc gain.

This is also apparent without converting to its frequency domain form by taking the limit of the state space form as D goes to 0, multiplied by D.

In this way we will get

$$
\lim_{ D \to 0 } Dy(D) = \lim_{ D \to 0 } \frac{Dca}{D(D+a)} = \lim_{ D \to 0 } \frac{ca}{D+a} = c
$$

Then the same steady-state value is determined to be c.

#### Second Order Systems
The general form is

$$
T_{2}(D) = \frac{c\omega_{n}^{2}}{D^{2} + 2\sigma D+\omega_{n}^{2}}
$$

where

$$
\begin{align}
c &= \text{dc gain} \\
\sigma &= \text{relative damping} \\
\omega_{n} &= \text{undamped natural frequency}
\end{align}
$$

where the poles are

$$
\lambda_{1,2} = -\sigma \pm \sqrt{ \sigma^{2} - \omega^{2} }
$$

The system is stable if

$$
\sigma < 0 \text{ and } \omega \neq 0
$$

Now we consider three cases for the second order system.

- Overdamped System
- Critically Damped System
- Underdamped System

Overdamped system means that $\sigma > \omega$.

Critically damped system means that $\sigma=\omega$.

Underdamped system means that $\sigma<\omega$.

