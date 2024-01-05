function val = digit_sum(input, n)

if nargin < 2
    n = 1
end

if n == 1
    val = mod(input , 10^n) + digit_sum(input, n+1)
elseif mod(input , 10^n) == input
    val = (mod(input , 10^n) - mod(input , 10^(n-1)))/10^(n-1)
else
    val = (mod(input , 10^n) - mod(input , 10^(n-1)))/10^(n-1) + digit_sum(input, n+1)
end

end