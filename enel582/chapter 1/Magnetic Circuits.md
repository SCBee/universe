#enel582 #lec01 

An electric circuit can be analogous to the current in a coil of wire wrapped around a core and producing a magnetic flux in the core.

A magnetic circuit can be defined whose behaviour is governed the equations derived by [[Ampere's Law]].

The magnetic circuit simplifies the design of electric machines and transformers.

![[magnetic circuit.png]]

From the diagram, we can see that
- the driving force is the magnetomotive force instead of voltage (electromotive force)
- the flow is the total magnetic flux instead of current
- the reluctance is the amount of fight against the flow instead of resistance
- Permeance is the reciprocal of reluctance and is equivalent to conductance

$$
\begin{aligned}
\phi &= BA = \frac{\mu NiA}{L_c} \\
\phi &= Ni(\frac{\mu A}{L_c}) \\
\phi &= \Im (\frac{\mu A}{L_c})
\end{aligned}
$$
Then permeance and reluctance are
$$
\begin{aligned}
P &= \frac{\mu A}{L_c} \\
\Re &= \frac{L_c}{\mu A}
\end{aligned}
$$
Reluctance follows the same rules as resistance in circuits but are APPROXIMATIONS
- Within 5% error
$$
\begin{aligned}
Series: \Re_{eq} &= \Re_1 + \Re_2 +\; ...\;+ \Re_n \\
Parallel: \Re_{eq} &= \frac{1}{\Re_1} + \frac{1}{\Re_2} +\; ...\;+ \frac{1}{\Re_n} 
\end{aligned}
$$
