## 1
Substitute the motor transfer function (3) and the PID transfer function (6) into (4) to obtain the closed-loop transfer function 𝑇𝑟𝑒(𝐷), and express your answer as a ratio of polynomials in 𝐷.

Motor Transfer Function (3)
$$
P(D) = \frac{c}{D(\tau D + 1)}
$$

PID Transfer Function (6)
$$
C(D) = \frac{k_{d}D^{2}+k_{p}D+k_{i}}{D}
$$

Closed-loop Transfer Function (4)
$$
T_{re}(D) = \frac{1}{1+P(D)C(D)}
$$

Substitution and simplification
$$
\begin{align}
T_{re}(D) &= \frac{1}{1+P(D)C(D)} \\ \\
&= \frac{1}{1+\left( \frac{c}{D(\tau D + 1)} \right)\left( \frac{k_{d}D^{2}+k_{p}D+k_{i}}{D} \right)} \\ \\
&= \frac{1}{1+\left( \frac{c(k_{d}D^{2}+k_{p}D+k_{i})}{D^{2}(\tau D + 1)} \right)}
\\ \\
&= \frac{1}{\frac{D^{2}(\tau D+1) + c(k_{d}D^{2}+k_{p}D+k_{i})}{D^{2}(\tau D+1)}}
\\ \\
&= \frac{D^{2}(\tau D+1)}{D^{2}(\tau D+1) + c(k_{d}D^{2}+k_{p}D+k_{i})}
\\ \\
\end{align}
$$

>[!success] Result
>
$$ T_{re}(D) = \frac{\tau D^{3} + D^{2}}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D + ck_{i}} $$

## 2
Suppose that 𝑇𝑟𝑒(𝐷) is stable. Assume that 𝑘𝑖 > 0 and 𝑘𝑝 > 0.

##### (step input) What is the steady-state error 𝑒𝑠𝑠 = 𝑒(∞), and why?

Using Final Value Theorem to calculate $e_{ss}$

$$
e = T_{re}(D)r
$$
where r is the input.

$$
\begin{align}
e &= T_{re}(D)r \\ \\
r &= [1] = h = \frac{1}{D}
\end{align}
$$

$$
\begin{align}
e &= \left( \frac{\tau D^{3} + D^{2}}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D + ck_{i}} \right)\left( \frac{1}{D} \right)
\\ \\
e &= \left( \frac{\tau D^{2} + D}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D + ck_{i}} \right)
\\ \\
\end{align}
$$

Applying Final Value Theorem
$$
\begin{align}
\lim_{ D \to 0^{+} } [De] &= D\left( \frac{\tau D^{2} + D}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D + ck_{i}} \right)
\\ \\

\lim_{ D \to 0^{+} } [De] &= \left( \frac{\tau D^{3} + D^{2}}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D + ck_{i}} \right)
\\ \\


\end{align}
$$
The numerator goes to zero and the denominator goes to $ck_{i}$ so the limit becomes
$$
\begin{align}
e_{ss} &= \lim_{ D \to 0^{+} } [De] = 0
\\ \\
\end{align}
$$

>[!success] Result for Step Input
>Since we assume the system is stable then at steady state, it follows that
>$$
> f_{ss} = \lim_{ t \to \infty } f(t) = \lim_{ s \to 0^{+} } sF(s)
>$$
>$$
>e_{ss} = 0
>$$ 
>For a stable system, the error must converge to a constant value or the error must be bounded at $t\to \infty$ or $s \to 0^{+}$ and so this result is as expected.

<div class="pagebreak"> </div>



##### (ramp input) What will be the value of 𝑒𝑠𝑠?

$$
e = T_{re}(D)r
$$


$$
\begin{align}
e &= T_{re}(D)r \\ \\
r &= [t] = \frac{1}{D^{2}}
\end{align}
$$

$$
\begin{align}
e &= \left( \frac{\tau D^{3} + D^{2}}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D + ck_{i}} \right)\left( \frac{1}{D^{2}} \right)
\\ \\
e &= \left( \frac{\tau D + 1}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D + ck_{i}} \right)
\\ \\
\end{align}
$$


Applying Final Value Theorem
$$
\begin{align}
e_{ss} = \lim_{ D \to 0^{+} } [De] &= D\left( \frac{\tau D + 1}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D + ck_{i}} \right)
\\ \\

\lim_{ D \to 0^{+} } [De] &= \left( \frac{\tau D^{2} + D}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D + ck_{i}} \right)
\\ \\

\lim_{ D \to 0^{+} } [De] &= \left( \frac{0 + 0}{0 + 0 + 0 + ck_{i}} \right) = 0
\\ \\

e_{ss} &= 0
\\ \\

\end{align}
$$

>[!success] Result for Ramp Input
>$$ e_{ss} = 0 $$


## 3
Suppose instead that $k_{i} = 0$, so the PID control reduces to a PD control.

Does this change the steady-state errors in response to step and ramp reference inputs? If so, by how much?

if $k_{i} = 0$ then for the step input


$$
\begin{align}
e &= \frac{\tau D^{2} + D}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D}
\\ \\
\end{align}
$$

Applying Final Value Theorem
$$
\begin{align}
e_{ss} &= \lim_{ D \to 0^{+} } [De] = D\left( \frac{\tau D^{2} + D}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D} \right)
\\ \\

e_{ss} &= \lim_{ D \to 0^{+} } [De] = \frac{D}{D}\left( \frac{\tau D^{2} + D}{\tau D^{2} + (1 + ck_{d})D + ck_{p}} \right)
\\ \\

e_{ss} &= \frac{0}{ck_{p}} = 0

\end{align}
$$

>[!success] Result for Step Input (PD Control)
>$$ e_{ss} = 0 $$
>So the steady-state error did not change if we go to PD control.



if $k_{i} = 0$ then for the ramp input


$$
\begin{align}
e &= \left( \frac{\tau D + 1}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D} \right)
\\ \\
\end{align}
$$

Applying Final Value Theorem
$$
\begin{align}
e_{ss} &= \lim_{ D \to 0^{+} } [De] = D\left( \frac{\tau D + 1}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D} \right)
\\ \\

e_{ss} &= \lim_{ D \to 0^{+} } [De] = \frac{D}{D}\left( \frac{\tau D + 1}{\tau D^{2} + (1 + ck_{d})D + ck_{p}} \right)
\\ \\

e_{ss} &= \lim_{ D \to 0^{+} } [De] = \left(  \frac{0 + 1}{0 + 0 + ck_{p}} \right)
\\ \\

e_{ss} &= \lim_{ D \to 0^{+} } [De] = \frac{1}{ck_{p}}
\\ \\

\end{align}
$$

>[!success] Result for Ramp Input (PD Control)
>$$ e_{ss} = \frac{1}{ck_{p}} $$
>So the steady-state error changed from 0 to $\frac{1}{ck_{p}}$.


## 4
The transient response of the feedback system depends on the poles of 𝑇𝑟𝑒(𝐷), which are the roots of the denominator polynomial in 𝑇𝑟𝑒(𝐷).

For the case of PD control, what is the order of this polynomial (i.e. how many poles does 𝑇𝑟𝑒(𝐷) have)?
Give an example of a purely mechanical system of the same order.

Qualitatively, what is the effect of increasing 𝑘𝑝 on the step response of the feedback system?

What is the effect of increasing 𝑘𝑑? Justify your answers by relating the control gains to the physical parameters in your mechanical analogy.

For PD control, $k_{i} = 0$.

Then
$$
\begin{align}
T_{re}(D) &= \frac{\tau D^{3} + D^{2}}{\tau D^{3} + (1 + ck_{d})D^{2} + ck_{p}D}
\\ \\

T_{re}(D) &= \frac{\tau D^{2} + D}{\tau D^{2} + (1 + ck_{d})D + ck_{p}}
\\ \\
\end{align}

$$
The denominator roots are the poles so

$$
\begin{align}
\tau D^{2} + (1+ck_{d})D + ck_{p}
\end{align}
$$

>[!success] Number of Poles
>2 Poles since it is a second order polynomial.
>

>[!success] 2nd Order Purely Mechanical System
>An example of a mechanical system with the same order is a mass-spring-damper system, where a mass is tied to ground by a spring and damper in parallel.
>
>The system's transfer function would be
>$$
>T_{x} = \frac{1}{mD^{2} + bD + k}
>$$
>where m is the mass, b is the damper coefficient, and k is the spring coefficient, and x is the distance from rest when a force is applied.

Relating the terms

$$
\begin{align}
\tau D^{2} + (1+ck_{d})D + ck_{p} = mD^{2} + bD + k \\ \\
\end{align}
$$

So

$$
\begin{align}
\tau &= m \\ \\
1+ck_{d} &= b \\ \\
ck_{p} &= k
\end{align}
$$


>[!success] Comparing $k_{p}$ and $k_{d}$
>
>When $k_{p}$ is increased, the relation is the the friction coefficient increases which is dependent on the distance moved by the mass. This is a good physical analogy to proportional control since they both exhibit linear proportional gain.
>When $k_{d}$ is increased, the relation is that the damping coefficient increases. A damper resists motion via viscous friction and is proportional to the mass' velocity. This means that as the mass moves faster, the damper applies a stronger force to go against the mass' movement.
>This is a good representation of derivative control because both are based on the idea of going against the trend at a given point in time. The derivative control is stronger when error is changing at a higher rate and likewise, the damper applies a force when the mass is moving at a higher rate.







