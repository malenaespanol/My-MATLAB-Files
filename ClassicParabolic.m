%-----------------------------------------------------
% this function solves u_t=D u_xx, with x in (0,A )
% BC: u(0,t) = f(t), u(A,t) = g(t), and u(x,0) = T(x)
% using Forward difference (BD1) to approximate u_t
% and central difference (CD2 , 121 formula) to approximate u_xx
%
% Malena Espanol - March 2017
%-----------------------------------------------------

function [u,x,t] = ClassicParabolic(D, A, f, g, T,tmax, dx, dt)

% define discretization points for t and x
x = 0:dx:A; 
t = 0:dt:tmax;

N = length(x);
M = length(t);

% initialize matrix to store solution at all times
% each column contains the solution to each time step
u = zeros(N,M);
R = D*dt/dx^2

% intial conditions
u(:,1) = T(x); 

% time loop
for n = 1: M-1
    % left BC point at time  t_n+1
    u(1, n+1) = f(t(n+1));
    % interior points at time t_n+1
    for i=2:N-1
        u(i,n+1) = u(i,n) + R*(u(i-1,n)-2*u(i,n)+u(i+1,n));
    end
    % right BC point at time t_n+1
    u(N,n+1) = g(t(n+1));
end
    
end





