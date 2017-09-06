function [p] = bisect_recursive (func,a,b,fa,fb,atol)
%
% function [p] = bisect_recursive (func,a,b,fa,fb,atol)
%
% Assuming fa = func(a), fb = func(b), and fa*fb < 0,
% there is a value root in (a,b) such that func(root) = 0.
% This function returns in p a value such that 
%      | p - root | < atol
%
% By Uri M. Ascher and Chen Greif

p = (a+b)/2;
if b-a < atol
  return
else  
  fp = func(p);
  if fa * fp < 0
    b = p;
    fb = fp;
  else
    a = p;
    fa = fp;
  end
  p = bisect_recursive (func,a,b,fa,fb,atol);
end
