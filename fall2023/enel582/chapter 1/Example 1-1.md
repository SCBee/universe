#enel582 #lec01 #example
###### Problem

A ferromagnetic core is shown in Figure l-7a. Three sides of this
core are of uniform width, while the fourth side is somewhat thinner. The depth of the core
(into the page) is 10 cm, and the other dimensions are shown in the figure. There is a 200-
turn coil wrapped around the left side of the core. Assuming relative permeability μr of
2500, how much flux will be produced by a 1-A input current?

![[enel582 example1.1.png]]

###### My Solution

$$
\phi = BA = \frac{\mu NiA}{L_c}
$$
$$
\mu = \mu_r \mu_0 = (2500)(4\pi \times 10^{-7})
$$
$$
N = 200
$$
$$
i = 1
$$


Splitting the area and lengths up into 2 regions since it isn't the same. We can add the values up later.
$$
\begin{aligned}
L_c &= L_1 + L_2 \\
\end{aligned}
$$
$$
\begin{aligned}
L_1 &= 30 + \frac{15}{2} + \frac{15}{2} = 45\;cm \\
L_2 &= 30 + 30 + 30 + \frac{10}{2} + \frac{15}{2} + \frac{15}{2} + \frac{15}{2} + \frac{15}{2} + \frac{10}{2} \\
&= 90 + 10 + 15 + 15 = 100 + 30 \\
&= 130\;cm
\end{aligned}
$$
$$
\begin{aligned}
A_1 &= (10)(10) = 100\;cm^2 = 0.01m^2 \\
A_2 &= (15)(10) = 150\;cm^2  = 0.015m^2\\
\end{aligned}
$$
Then plugging back into the total flux equation
$$
\begin{aligned}
\phi &= \frac{\Im}{\Re_{eq}} = \frac{Ni}{\Re_{eq}}
\end{aligned}
$$
$$
\begin{aligned}
\Re_{eq} &= \Re_1 + \Re_2 \\
\end{aligned}
$$
$$
\begin{aligned}
\Re_1 &= \frac{L_1}{\mu A_1} = \frac{0.45}{0.01 \mu} = 14323.9 \\
\Re_2 &= \frac{L_2}{\mu A_2} = \frac{1.30}{0.015 \mu} = 27586.9 \\
\end{aligned}
$$
$$
\begin{aligned}
\phi &= \frac{(200)(1)}{41910.8} \\ \\
\phi &= 0.004772
\end{aligned}
$$





