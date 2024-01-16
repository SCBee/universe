#enel582 #lec01

![[linear dc machine.png]]

This machine is characterized by 4 equations:


Force on a wire in the presence of a magnetic field
$$
F = i(L \times B)
$$

Induced voltage on the wire due to moving in a magnetic field
$$
e_{ind} = (v \times B) \cdot L
$$

Kirchoff's Voltage Law for the circuit
$$
V_B = e_{ind} + iR = 0
$$

Newton's Law for the wire across the tracks
$$
F_{net} = ma
$$

This machine can be used illustrate how a motor and generator works by applying a load force on the wire
- motor: opposite the direction of no-load movement
- generator: in the same direction of no-load movement

While the load force is applied in opposite directions, the machine is always operating in the same direction and the wire's speed is slow (for motor) and fast (for generator).

###### High starting current
At start, when velocity of the wire is 0 and thus $e_{ind}$ is 0, there is an issue. The current going through the machine is insanely high!

This can be alleviated by adding a starting resistor that is disconnected after the induced voltage is sufficiently high enough, but this is only done for DC machines. The method to deal with this in AC machines is covered in chapter 6.
