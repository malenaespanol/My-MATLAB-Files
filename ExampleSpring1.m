% One Spring
% Newton's second laws of motion
% mx''=-kx
%
% system of ODE
% x1' = x2
% x2' = -(k/m)*x1
% where k is the spring constant
% and m is the mass

t0=0;
x1_0=1; % initial position
x2_0=0; %Initial velocity
k=0.5; 
m=1;

x0=[x1_0;x2_0];

F = @(x,t) [x(2);-(k/m)*x(1)];  

h=0.1;
maxtime = 10;
maxiter = 1000; 

x=forward_euler(F,x0, t0,h,maxtime, maxiter);
%%
for i=1:size(x,2)
    plot(1,x(1,i),'o')
    axis([0 2 -2 2])
    hold on;
    pause(0.5)
    drawnow
end