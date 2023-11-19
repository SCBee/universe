## 1

Equation 3 is
$$
\dot{\theta}(t) = |P(jw)|Asin(\omega t + \angle P(jw))
$$

let c = $22.55$ and $\omega = \omega_{0}$

>[!tip] Result
>$$
>|P(jw)| = \frac{22.55}{\sqrt{ 1^{2} + 1 }} = \frac{22.55}{\sqrt{ 2 }} = 15.95
>$$

## 2

$$
\phi(\omega) = \angle P(jw)= -tan^{-1}\left( \frac{\omega}{\omega_{0}} \right)
$$
let $\omega = \omega_{0}$

>[!tip] Result
>$$
>\phi(\omega) = -tan^{-1}(1) = -45 \degree
>$$

## 3

From lab 1 $\tau = 0.158 \text{ s}$, then the break frequency is

>[!tip] Result
>$$
>\omega_{0} = \frac{1}{\tau} = \frac{1}{0.158} = 6.33 \frac{rad}{s}
>$$

## 4

Converting to a frequency (Hz)

$$
f = \frac{\omega}{2\pi} = 1.007 \text{ Hz}
$$

Then calculating the period

>[!tip] Result
>$$
>T = \frac{1}{f} = \frac{1}{1.007} = 0.993 \text{ s}
>$$

## 5

Equation 8 is

$$
\phi = -\frac{T_{D}}{T}\times(360^{o})
$$

Using $\phi = -45^{o}$ from part 2 and $T=0.993 \text{ s}$ from part 4, solving for $T_{D}$

>[!tip] Result
>$$
>T_{D} = -\frac{\phi T}{360^{o}} = - \frac{45^{o}(0.993)}{360^{o}} = 0.124 \text{ s}
>$$

## 6

Equation 9 is

$$
v = k_{p}e + k_{d}\dot{e}
$$

$$
v = (k_{p}+k_{d})e \to C(D) = \frac{v}{c} = k_{p} + k_{d}D
$$

Then the transfer function is

>[!tip] Result
>$$
>T_{r\theta} = \frac{CP}{1+CP} = \frac{bk_{d}D + bk_{p}}{D^{2} + bk_{d}D + bk_{p}}
>$$

where

>[!tip] Supplementary
>$$
>b = \frac{c}{\tau}=\frac{22.55}{0.158}=142.7
>$$

## 7

$$
\omega_{n}^{2} = bk_{p} \to \omega_{n} = \sqrt{ bk_{p} }
$$

Let $b = 142.7$ and $k_{p} = \{ 4,50 \}$

$k_{p} = 4 \text{ : }$

>[!tip] Result
>$$
>\omega_{n} = 23.9 \frac{rad}{s}
>$$

$k_{p} = 50 \text{ : }$

>[!tip] Result
>$$
>\omega_{n} = 84.5 \frac{rad}{s}
>$$


## 8

From the characteristic equation of a 2nd order system, the poles are the roots of the denominator

$$
-bk_{d} \pm \sqrt{ (bk_{d})^{2} - 4bk_{p} } \to (bk_{d})^{2} - 4bk_{p} = 0
$$
then the equation for $k_{d}$ is

$$
k_{d} = 2\sqrt{ \frac{k_{p}}{b} }
$$

Let $b = 142.7$

$k_{p} = 4 \text{ : }$

>[!tip] Result
>$$
>k_{d} = 2\sqrt{ \frac{4}{142.7} } = 0.335
>$$

$k_{p} = 50 \text{ : }$

>[!tip] Result
>$$
>k_{d} = 2\sqrt{ \frac{50}{142.7} } = 1.184
>$$

## 9

The transfer function is

$$
T_{r\theta} = \frac{bk_{d}D + bk_{p}}{D^{2}+bk_{d}D+bk_{p}}
$$

Then the magnitude is

>[!tip] Result
>$$
>T_{r\theta}(j\omega) = \frac{\mid bk_{p}+jk_{d}\omega\mid}{\mid-\omega^{2} + jbk_{d}\omega + bk_{p} \mid} = \frac{\sqrt{ (bk_{p})^{2} + (k_{d}\omega b)^{2} }}{\sqrt{ (bk_{p})^{2}+(-\omega^{2})^{2}+(bk_{d}\omega)^{2} }}
>$$

and the phase shift is

>[!tip] Result
>$$
>\angle T_{r\theta}(jw) = tn^{-1} \frac{bk_{p} + jk_{d}\omega b}{-\omega^{2}+jbk_{d}\omega+bk_{p}} = tn^{-1}\left( \frac{k_{d}\omega b}{bk_{p}} \right) - tn^{-1} \frac{k_{d}\omega b}{bk_{p}-\omega^{2}}
>$$

## 10

Letting $\omega = 0$

>[!tip] Result
>$$
>T_{r\theta}(0) = \frac{bk_{p} + jk_{d}(0)}{-(0)^{2} + jbk_{d}(0) + bk_{p}} = \frac{bk_{p}}{bk_{p}} = 1
>$$


Letting $k_{p} = 4$, $\omega=23.9$, $b = 142.7$, and $k_{d} = 0.335$


Then the magnitude is
$$
T_{r\theta}(j\omega) = \frac{\sqrt{ (142.7 \times 4)^{2} + (0.335 \times 23.9 \times 142.7)^{2} }}{\sqrt{ (142.7 \times 4)^{2} + ((23.9)^{2})^{2} + (0.335 \times 23.9 \times 142.7)^{2}}}
$$

>[!tip] Result
>$$
>T_{r\theta}(j\omega) = \frac{1261.5}{1384.6} = 0.91
>$$


and the phase shift is

$$
\angle T_{r\theta}(j\omega_{n}) = tan^{-1}\left( \frac{0.33 \times 23.9 \times 142.7}{142.7\times4} \right)- tan^{-1}\left( \frac{0.33\times23.9\times142.7}{142.7\times4 - 23.9^{2}} \right)
$$

>[!tip] Result
>$$
>\angle T_{r\theta}(j\omega_{n}) = 63.1^{o} - 89.99^{o} = -26.89^{o}
>$$
