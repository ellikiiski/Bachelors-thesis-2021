function phin = totientfunction(from, to)
% Returns vector of first n values of Euler's phi function
phin = [];
for i=from:to
    if (i==1)
        phin = [1];
    elseif isprime(i)
        phin = [phin (i-1)];
    else
        count = 0;
        for j=1:i
            if (gcd(j,i)==1)
                count = count+1;
            end
        end
        phin = [phin count];
    end
end