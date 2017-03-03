%-----------------------------------------------------
% this function solves u_t=2 u_xx, with x in (0,1 )
% BC: u(0,t) = f(t), u(A,t) = g(t), and u(x,0) = T(x)
% using Forward difference (BD1) to approximate u_t
% and central difference (CD2 , 121 formula) to approximate u_xx
%
% Malena Espanol - March 2017
%-----------------------------------------------------

% Parameters that define the problem 
D = 0.25;
A = 2;
f = @(t) 0;
g = @(t) 0;
T = @(x)  sin(pi*x/2)-sin(pi*x) + 4*sin (2*pi*x);
tmax = 1;
dx = 0.1;
dt = 0.001;
%%
% Solve PDE
[u,x,t] = ClassicParabolic(D, A, f, g, T, tmax, dx, dt);

%%
% 3D plot
mesh(x,t,u')

%%
% 2D plot
figure; plot(x, u(:,1), x , u(:,end));





