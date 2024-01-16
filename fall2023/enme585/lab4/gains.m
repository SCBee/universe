% Graham Stevens 2022-09
% Dr. Goldsmith 2022-10

% Choose pendulum up or down:
up = 0; % 0 for down (gantry), 1 for up (inverted pendulum)

if up == 1
 p = [-22.1165 -13.7749 -4.0522 -0.9011]; % poles for pendulum up
else
 p = [-40 -20 (-3.2+3.36i) (-3.2-3.36i)]; % poles for pendulum down
end

% System constants (from Quanser user manual)
g = 9.81;
mec = 0.500;
bec = 11.27; 
eta = 1.072;
% bec =  ; % input your experimentally found values here
% eta =  ; % and here (and delete the leading % signs)

% Medium pendulum constants
mp = 0.127;
lp = 0.1778;
Jp = 1.2e-3;

% Long pendulum constants
% mp = 0.230;
% lp = 0.3302;
% Jp = 7.88e-3;

l = Jp/(mp*lp) + lp; % distance from pivot
m = mec + (1-lp/l)*mp; % effective mass

%  closed-loop characteristic polynomial:
cp = conv([-p(1) 1],conv([-p(2) 1],conv([-p(3) 1],[-p(4) 1])));
cp = real(cp);

% plant coefficients in control canonical form:
a = [0 ((-1)^up)*g*bec/(m*l) ((-1)^up)*g*(mec+mp)/(m*l) bec/m 1];

% calculated gains:
K = cp - a;
k = ((-1)^up)*g*eta/(m*l);
K = K/k;

kpx = K(1)
kdx = K(2)
kpa = ((-1)^up)*K(1)*l-K(3)*g
kda = ((-1)^up)*K(2)*l-K(4)*g
