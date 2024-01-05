N = 10000;
x = zeros(1, N);
y = zeros(1, N);
x(1) = 0.5;
y(1) = 0.5;
for i = 2:N
    r = randi([0, 2]);
    switch r
        case 0
            x(i) = 0.5 * x(i-1);
            y(i) = 0.5 * y(i-1);
        case 1
            x(i) = 0.5 * x(i-1) + 0.25;
            y(i) = 0.5 * y(i-1) + sqrt(3) / 4;
        case 2
            x(i) = 0.5 * x(i-1) + 0.5;
            y(i) = 0.5 * y(i-1);
    end
end
plot(x, y, '.');
