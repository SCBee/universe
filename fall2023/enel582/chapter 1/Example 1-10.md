#enel582 #lec01 #example 

###### Problem

A linear DC machine has
- battery voltage of 120 V
- internal resistance of 0.3 ohms
- magnetic flux density of 0.1 T
- wire length of 10 m

With the configurations of
![[example 1-10.png]]

###### My Solution

$$
\begin{align}
V_{B}  & = 120 \\
R  & = 0.3 \\
B  & = 0.1 \\
L  & = 10
\end{align}
$$
a) What is the maximum starting current? What is the steady-state velocity with no load?

The maximum starting current is calculated as
$$
i_{max} = \frac{V_B - e_{ind}}{R} = \frac{V_B}{R} = \frac{120}{0.3} A
$$

The steady state velocity begins with equation
$$
\begin{aligned}
e_{ind} = (v \times B) \cdot L
\end{aligned}
$$

where the induced voltage is equal to the voltage of the battery
$$
\begin{aligned}
e_{ind} = V_B = (v \times B) \cdot L
\end{aligned}
$$
then the voltage of the battery is 
$$
V_{B} = 120 = v_{ss}BL = v_{ss}(0.1)(10)
$$
$$
v_{ss} = \frac{120}{(0.1)(10)} = \frac{120}{1} = 120 \frac{m}{s}
$$
b) A 30 N force is applied pointing to the right of the bar, what would the steady state speed be? How much power would the bar be producing or consuming? How much power would the battery be producing or consuming?

In this linear machine, the machine acts as a generator when the load force is applied to the right. So in this case, it is a generator that is producing power!

$$
F_{load} = i(L \times B) = 30
$$
$$
i = \frac{30}{(10)(0.1)} = 30 A
$$
then the induced  voltage can be calculated

$$
\begin{align}
e_{ind}  & = V_{B} + iR \\
e_{ind}  & = 120 + (30)(0.3) \\
e_{ind}  & = 129 \;V
\end{align}
$$
then calculate the steady-state velocity
$$
\begin{align}
e_{ind} & = (v_{ss} \times B) \cdot L \\
e_{ind} & = v_{ss}BL \\
v_{ss}  & = \frac{e_{ind}}{BL} = \frac{129}{(0.1)(10)} \\
v_{ss}  & = 129 \frac{m}{s}
\end{align}
$$
The power is calculated as the force applied multiplied by the velocity, or the torque multiplied by the radial velocity.

$$
\begin{align}
P_{bar} & = (30)(129) = 3870\;W \\
P_{battery} & = iV = (30)(120) = 3600\;W
\end{align}
$$
The bar is producing 3870 W of power, and the battery is consuming 3600 W of power. The difference is caused by the internal resistance of the circuit.
