%Write a function called freezing that takes a vector of numbers that correspond to daily low temperatures in Fahrenheit. Return numfreeze, the number of days with sub freezing temperatures (that is, lower than 32 F) without using loops.%

function numfreeze = freezing(v)
v = v(v<32)
numfreeze = size(v,2)
end