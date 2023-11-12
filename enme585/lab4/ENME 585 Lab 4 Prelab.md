## 1
The equation for the linear servo base unit without a pole is
$$
m_{ec}\ddot{x} + b_{ec}\dot{x} = \eta v
$$
where the time constant is
$$
\tau = \frac{m_{ec}}{b_{ec}}
$$
and the dc gain is
$$
c = \frac{\eta}{b_{ec}}
$$

>[!success] Time Constant & DC Gain
>$$
>\begin{align}
>\tau &= \frac{m_{ec}}{b_{ec}} = \frac{0.500}{11.27} = 0.0444 \; s
>\\ \\
>c &= \frac{\eta}{b_{ec}} = \frac{1.072}{11.27} = 0.0951
>\end{align}
>$$
## 2
The relationship is

$$
b_{ec} = 2(\zeta \omega)
$$
where $\zeta$ is equal to 1.0 since it is a critically damped system.

Then
$$
\begin{align}
b_{ec} = 2\omega = 11.27
\\ \\ \\
\omega = \frac{b_{ec}}{2} = \frac{11.27}{2}
\end{align}
$$

The proportional control gain relationship is
$$
k_{p} = \frac{\omega^{2}\tau}{c} = \frac{(11.27)^{2}(0.0444)}{0.0951} = 59.299
$$

>[!success] Proportional Gain
>$$
>k_{p} = 59.3
>$$
## 3
The parameters given are
$$
\begin{align}
m_{p} = 0.127 \; kg \\ \\
l_{p} = 0.1778 \; m  \\ \\
J_{p} = 1.20 \times 10^{-3} \; kgm^{2} \\ \\
b_{p} = 0.0024 \; \frac{Nm}{s}
\end{align}
$$

Equation 6 with $up = 0$ and a constant $x$ such that $\ddot{x} = 0$ is

$$
(J_{p} + m_{p}l_{p}^{2})\ddot{\alpha} + m_{p}l_{p}g\alpha = 0
$$

Subbing in the given parameters results in

$$
((1.20\times10^{-3}) + (0.127)(0.1778)^{2})\ddot{\alpha} + (0.127)(0.1778)(9.81)\alpha = 0
$$

The equation simplifies to

$$
5.2148\times10^{-3}\ddot{\alpha} + 0.22152\alpha = 0
$$

then the roots are

$$
\begin{align}
r_{1} &= 6.575i \\
 \\
r_{2} &= -6.575i
\end{align}
$$

then

$$
\alpha = c_{1} cos(6.575t) + c_{2} sin(6.575t)
$$


>[!success] Frequency with up = 0
>$$
>\omega = 6.575 \; \frac{rad}{s}
>$$
## 4
Running the script for the gantry system (up = 0) yields

>[!success] Gantry System
>$$
>\begin{align}
>k_{px} &= 200.1736 \\
>\\
>k_{dx} &= 64.0046 \\
>\\
>k_{p\alpha} &= -85.4782 \\
>\\
>k_{d\alpha} &= 9.6389 \\
>\end{align}
>$$


Running the script for the inverted pendulum system (up = 1) yields

>[!success] Inverted Pendulum System
>$$
>\begin{align}
>k_{px} &= -12.9285 \\
>\\
>k_{dx} &= -29.5742 \\
>\\
>k_{p\alpha} &= 64.1429 \\
>\\
>k_{d\alpha} &= 9.0588 \\
>\end{align}
>$$












