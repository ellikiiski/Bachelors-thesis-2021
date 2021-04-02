function out = gcd(a,b)
% Recursive function that returns
% the greatest common divisor of a and b
if (a==b)
    out = a;
elseif (a>b)
    out = gcd((a-b),b);
else
    out=gcd(a,(b-a));    
end
