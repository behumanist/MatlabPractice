function x = reversal(v, n)

if nargin < 2
    n = floor(size(v,2)/2);
end

if n == 0
    x = v;
else
    a = v(n);
    v(n) = v(end+1-n);
    v(end+1-n) = a;
    v = reversal(v, n-1)
    x=v;
end
end