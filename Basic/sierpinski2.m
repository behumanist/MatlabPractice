function sierpinski2(a, b, c, n)
% This function draws a Sierpinski triangle by using recursion
% Input: 3 coordinates a, b, c (2-D vector) and number of recursion n
% Output: Graph of Sierpinski triangle

% Base case: plot a single triangle
if n == 0
    patch([a(1), b(1), c(1)], [a(2), b(2), c(2)], 'k');
else
    % Recursive case: divide the triangle into 4 smaller triangles
    % and call the function on 3 of them
    ab = (a + b) / 2; % midpoint of a and b
    bc = (b + c) / 2; % midpoint of b and c
    ca = (c + a) / 2; % midpoint of c and a
    sierpinski(a, ab, ca, n-1); % top triangle
    sierpinski(ab, b, bc, n-1); % right triangle
    sierpinski(ca, bc, c, n-1); % left triangle
end
end
