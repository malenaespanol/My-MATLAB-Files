% Forward Euler Method 
% X_n+1 = X_n + h F(X_n,t_n)

function x=forward_euler(F,x0, t0,h,maxtime, maxiter)

x(:,1) = x0;
t = t0;
for i=1:maxiter
    if t>maxtime
        return
    end
    x(:,i+1)=x(:,i) + h*F(x(:,i),t);
    t = t + h;
end