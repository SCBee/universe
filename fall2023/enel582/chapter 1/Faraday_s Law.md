#enel582 #lec01 

The law states that a coil of wire that has a magnetic flux passing through it has a voltage induced in the wire and is described by the equation
$$
e_{induced} = -N\frac{d\phi}{dt}
$$
where
- e is the voltage induced in the coil
- N is the number of turns of wire in a coil
- $\phi$ is the flux passing through the coil

The negative sign is there because of Lenz's law but since the polarity (direction) of the induced voltage can be determined by considering the physical model, it is generally left out.

Since that equation assumes that the flux leakage from the core through the wires are the same (which it usually isn't), then we need to use the modified version

$$
e_{ind} = \frac{d\lambda}{dt}
$$
where
$$
\lambda = \sum_{i=1}^{N} \phi_i
$$
lambda is called the flux linkage and has units (Weber-turns).