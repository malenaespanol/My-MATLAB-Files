function c = malena3(a,n)
if n==0
    c = a;
else
    n = n-1;
    c = malena3(a,n);
    c = c+1;
end
