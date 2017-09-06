function c = malena4(a,n)
if n==1
    c = a + 1;
else
    n = n-1;
    c = malena4(a,n) + 1;
end
