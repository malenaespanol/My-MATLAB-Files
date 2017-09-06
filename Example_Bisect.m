% Calling bisection
% Want to Compute 9^(1/5) by solving f(x)=x^5-9=0

f = @(x) x^5-9;
a = 0; b = 2;
tol = .5e-10;

% tic toc will measure the time to compute the root 
tic 
[root, it] = bisect(f, a, b, f(a), f(b), tol);
toc 
fprintf('the root is % 20.10e \n', root)

tic
[root] = bisect_recursive(f, a, b, f(a), f(b), tol);
toc
fprintf('the root is % 20.10e \n', root)