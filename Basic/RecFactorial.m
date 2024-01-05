function val = RecFactorial(x)

if x <= 0
    val = 1;
else
    val = x * RecFactorial(x - 1);
end

end