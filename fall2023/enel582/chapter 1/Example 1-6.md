#enel582 #lec01 #example 
###### Problem
The flux in a core is given by the equation

$$
\phi = 0.05sin(377t)
$$
The coil has 100 turns (N=100) and all flux stays within the core (zero leakage).

What voltage is produced at the terminals of the coil? What polarity is the voltage when the flux is increasing in the reference direction (figure 1-15).

![[example 1-6.png]]

###### My Solution
Since the equation for finding the voltage is
$$
\begin{aligned}
e_{ind} &= \frac{d\lambda}{dt}  \\ \\
\lambda &= \sum_{i=1}^{N} \phi_i
\end{aligned}
$$
Then we can solve for the voltage and assume all levels of phi are the same so that
$$
\lambda = \phi = (N)(0.05)sin(377t)
$$
then
$$
e_{ind} = (N)\frac{d(0.05sin(377t))}{dt}
$$
$$
e_{ind} = (100)(0.05)(377)cos(377t)
$$
$$
e_{ind} = (5)(377)cos(377t)
$$
The direction of the induced voltage is the same as the one in the figure.